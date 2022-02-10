import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_api_bloc/bloc/app_authentication_bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc appBloc) => appBloc.state.user);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _iconProfile(context, user.photo.toString()),
          const SizedBox(height: 20),
          Text(user.name ?? 'Unknown'),
          const SizedBox(height: 5),
          Text(user.email ?? 'Unknown'),
          const SizedBox(height: 20),
          _logOutButton(context)
        ],
      ),
    );
  }

  Widget _iconProfile(BuildContext context, String imageUrl) {
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => const Center(
            child: SizedBox(
                width: 10, height: 10, child: CircularProgressIndicator())),
        errorWidget: (context, url, error) =>
            const Icon(Icons.supervised_user_circle_outlined),
      ),
    );
  }

  Widget _logOutButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      onPressed: () {
        context.read<AppBloc>().add(AppLogoutRequested());
      },
      child: const Text('LOG OUT'),
    );
  }
}
