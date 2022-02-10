import 'package:cat_api_bloc/bloc/app_authentication_bloc/app_bloc.dart';
import 'package:cat_api_bloc/data/models/cat_model/cat_image.dart';
import 'package:cat_api_bloc/data/repositories/favorite_repo.dart';
import 'package:cat_api_bloc/ui/pages/cat_detail_page.dart';
import 'package:cat_api_bloc/ui/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final FavoriteRepo _favoriteRepo = FavoriteRepo();

  @override
  Widget build(BuildContext context) {
    final _user = context.select((AppBloc appBloc) => appBloc.state.user);

    return StreamBuilder<List<CatImage>>(
        stream: _favoriteRepo.readFavorite(_user.email.toString()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              separatorBuilder: (_, index) => const SizedBox(
                height: 5,
              ),
              itemCount: snapshot.requireData.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                CatImage result = snapshot.requireData[index];
                return InkWell(
                  child: Hero(
                      tag: result.url, child: CustomListTile(catImage: result)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CatDetailPage(
                            catImage: result,
                          ),
                        ));
                  },
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}
