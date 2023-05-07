import 'package:compras/common/constants/routes.dart';
import 'package:compras/features/home/home_bloc.dart';
import 'package:compras/features/home/home_page.dart';
import 'package:compras/features/sign_in/sign_in_page.dart';
import 'package:compras/features/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/sign_up/sign_up_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compras',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      routes: {
        NamedRoutes.initial: (context) => const SplashPage(),
        NamedRoutes.home: (context) => BlocProvider(
              create: (context) => HomeBloc(),
              child: const HomePage(),
            ),
        NamedRoutes.signIn: (context) => const SignInPage(),
        NamedRoutes.signUp: (context) => const SignUpPage(),
      },
    );
  }
}
