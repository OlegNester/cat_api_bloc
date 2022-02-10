import 'package:cat_api_bloc/bloc/cat_bloc/cat_image_bloc.dart';
import 'package:cat_api_bloc/bloc/home_page_cubit/home_cubit.dart';
import 'package:cat_api_bloc/data/repositories/cat_image_repo.dart';
import 'package:cat_api_bloc/ui/pages/cat_page.dart';
import 'package:cat_api_bloc/ui/pages/favorite_page.dart';
import 'package:cat_api_bloc/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final catImageRepo = CatImageRepo();

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select((HomeCubit cubit) => cubit.state.tab);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('${selectedTab.name[0].toUpperCase()}${selectedTab.name.substring(1)}'),
      ),
      body: IndexedStack(
        index: selectedTab.index,
        children: [
          BlocProvider(
              create: (context) => CatImageBloc(catImageRepo: catImageRepo),
              child: const CatPage()),
          const FavoritePage(),
          const ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.amber,
        child: Row(
          children: [
            Expanded(
              child: _HomeTabButton(
                groupValue: selectedTab,
                value: HomeTab.cats,
                iconAssets: 'assets/cat_logo.png',
              ),
            ),
            Expanded(
              child: _HomeTabButton(
                groupValue: selectedTab,
                value: HomeTab.favorites,
                iconAssets: 'assets/favorite_logo.png',
              ),
            ),
            Expanded(
              child: _HomeTabButton(
                groupValue: selectedTab,
                value: HomeTab.profile,
                iconAssets: 'assets/profile_icon.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeTabButton extends StatelessWidget {
  const _HomeTabButton({
    Key? key,
    required this.groupValue,
    required this.value,
    required this.iconAssets,
  }) : super(key: key);

  final HomeTab groupValue;
  final HomeTab value;
  final String iconAssets;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<HomeCubit>().setTab(value),
      iconSize: 28,
      icon: Image.asset(
        iconAssets,
        color: groupValue != value ? null : Colors.white,
      ),
    );
  }
}
