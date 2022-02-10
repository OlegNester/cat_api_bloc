import 'package:cat_api_bloc/bloc/app_authentication_bloc/app_bloc.dart';
import 'package:cat_api_bloc/data/models/cat_model/cat_image.dart';
import 'package:cat_api_bloc/data/repositories/favorite_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonLike extends StatefulWidget {
  CatImage catImage;
  BuildContext context;

  ButtonLike({Key? key, required this.catImage, required this.context}) : super(key: key);

  @override
  _ButtonLikeState createState() => _ButtonLikeState();
}

class _ButtonLikeState extends State<ButtonLike> {
  final FavoriteRepo _favoriteRepo = FavoriteRepo();
  bool? _like;

  @override
  void initState() {
    _like = widget.catImage.isLike;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _user = widget.context.read<AppBloc>().state.user.email.toString();
    return Material(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: IconButton(
          icon: Icon(
            _like == true ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
            size: 40,
          ),
          onPressed: () {
            if (_like == null) {
              setState(() {
                _addLike(_user);
                _like == true;
              });
            }
            if (_like == true) {
              setState(() {
                _removeLike(_user);
                _like == false;
              });
            }
          }),
    );
  }

  _addLike(String user) async {
    _favoriteRepo.addFavorite(
        user: user,
        id: widget.catImage.id,
        url: widget.catImage.url,
        isLike: true
    );
  }

  _removeLike(String user) async {
    _favoriteRepo.removeFavorite(
        user: user,
        id: widget.catImage.id
    );
  }
}
