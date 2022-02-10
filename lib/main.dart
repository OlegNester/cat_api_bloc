import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:cat_api_bloc/bloc/app_authentication_bloc/app_bloc.dart';
import 'package:cat_api_bloc/bloc/bloc_observable.dart';
import 'package:cat_api_bloc/bloc/home_page_cubit/home_cubit.dart';
import 'package:cat_api_bloc/bloc/login_page_cubit/login_cubit.dart';
import 'package:cat_api_bloc/ui/pages/home_page.dart';
import 'package:cat_api_bloc/ui/pages/login_page.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());

  HydratedBlocOverrides.runZoned(
    () => runApp(MyApp()),
    blocObserver: ListenerBlocError(),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final authenticationRepository = AuthenticationRepository();
  ConnectivityResult? _connectivityResult;

  Future<void> _checkConnectivityState() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    _connectivityResult = result;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => AppBloc(
                  authenticationRepository: authenticationRepository,
                )),
        BlocProvider(create: (_) => HomeCubit(), child: HomePage()),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        home: Scaffold(
          body: FutureBuilder(
            future: Future.wait([
              authenticationRepository.user.first,
              _checkConnectivityState()
            ]),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return BlocBuilder<AppBloc, AppState>(
                    buildWhen: (previous, current) {
                  return true;
                }, builder: (context, state) {
                  if (authenticationRepository.currentUser.isNotEmpty) {
                    return HomePage();
                  } else if (authenticationRepository.currentUser.isEmpty &&
                      _connectivityResult == ConnectivityResult.none) {
                    return HomePage();
                  } else {
                    return BlocProvider(
                        create: (_) => LoginCubit(authenticationRepository),
                        child: const LoginPage());
                  }
                });
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
