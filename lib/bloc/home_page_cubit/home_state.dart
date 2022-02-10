part of 'home_cubit.dart';

enum HomeTab {cats, favorites, profile}

class HomeState extends Equatable {
  final HomeTab tab;

  const HomeState({this.tab = HomeTab.cats});

  @override
  List<Object?> get props => [tab];

}
