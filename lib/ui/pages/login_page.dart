import 'package:cat_api_bloc/bloc/home_page_cubit/home_cubit.dart';
import 'package:cat_api_bloc/bloc/login_page_cubit/login_cubit.dart';
import 'package:cat_api_bloc/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state.status.isSubmissionFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text(state.errorMessage ?? 'Authentication Failure')));
            }
          },
          builder: (context, state) {
           if (state.status.isSubmissionInProgress) {
             return const Center(child: CircularProgressIndicator());
           } else if (state.status.isSubmissionSuccess) {
             return BlocProvider(create: (_) => HomeCubit(), child: HomePage());
           }
           return _login(context);
          }
        ),
      ),
    );
  }

   _login(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/login_page_icon.png'),
          ),
          _googleLoginButton(context),
          _facebookLoginButton(context)
        ],
      ),
    );
  }

  Widget _googleLoginButton(BuildContext context) {
    return ElevatedButton.icon(
      key: const Key('loginForm_googleLogin_raisedButton'),
      label: const Text(
        'SIGN IN WITH GOOGLE',
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        primary: Colors.amber,
      ),
      icon: const Icon(FontAwesomeIcons.google, color: Colors.white),
      onPressed: () => context.read<LoginCubit>().logInWithGoogle(),
    );
  }

  Widget _facebookLoginButton(BuildContext context) {
    return ElevatedButton.icon(
      key: const Key('loginForm_facebookLogin_raisedButton'),
      label: const Text(
        'SIGN IN WITH FACEBOOK',
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        primary: Colors.amber,
      ),
      icon: const Icon(FontAwesomeIcons.facebook, color: Colors.white),
      onPressed: () => context.read<LoginCubit>().logInWithFacebook(),
    );
  }
}
