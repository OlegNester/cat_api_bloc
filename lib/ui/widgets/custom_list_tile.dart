import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_api_bloc/data/models/cat_model/cat_image.dart';
import 'package:cat_api_bloc/ui/widgets/button_like.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final CatImage catImage;

  CustomListTile({Key? key, required this.catImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: CachedNetworkImage(
              imageUrl: catImage.url,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator())),
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error_outline),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 25,
            child: ButtonLike(catImage: catImage, context: context,),
          ),
        ],
      ),
    );
  }
}
