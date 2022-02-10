import 'package:auth_repository/auth_repository.dart';
import 'package:cat_api_bloc/bloc/app_authentication_bloc/app_bloc.dart';
import 'package:cat_api_bloc/bloc/bloc_observable.dart';
import 'package:cat_api_bloc/bloc/home_page_cubit/home_cubit.dart';
import 'package:cat_api_bloc/bloc/login_page_cubit/login_cubit.dart';
import 'package:cat_api_bloc/ui/pages/home_page.dart';
import 'package:cat_api_bloc/ui/pages/login_page.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: FutureBuilder(
            future: authenticationRepository.user.first,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return BlocProvider(
                  create: (_) =>
                      AppBloc(
                        authenticationRepository: authenticationRepository,
                      ),
                  child: BlocBuilder<AppBloc, AppState>(
                    buildWhen: (previous, current) {
                      return true;
                    },
                    builder: (context, state) {
                      if (authenticationRepository.currentUser.isNotEmpty) {
                        return BlocProvider(
                            create: (_) => HomeCubit(), child: HomePage());
                      }
                      return BlocProvider(
                          create: (_) => LoginCubit(authenticationRepository),
                          child: const LoginPage());
                    },
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            })
    );
  }
}
