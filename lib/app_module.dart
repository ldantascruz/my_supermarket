import 'package:flutter_modular/flutter_modular.dart';

import 'common/constants/routes.dart';
import 'features/home/home_page.dart';
import 'features/sign_in/sign_in_page.dart';
import 'features/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          NamedRoutes.initial,
          child: (context, args) => const SplashPage(),
        ),
        ChildRoute(
          NamedRoutes.home,
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          NamedRoutes.signIn,
          child: (context, args) => const SignInPage(),
        ),
      ];
}
