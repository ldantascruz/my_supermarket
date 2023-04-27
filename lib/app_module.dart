import 'package:compras/features/sign_in/sign_in_bloc.dart';
import 'package:compras/services/auth_service.dart';
import 'package:compras/services/graphql_service.dart';
import 'package:compras/services/secure_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'common/constants/routes.dart';
import 'features/home/home_page.dart';
import 'features/sign_in/sign_in_page.dart';
import 'features/sign_up/sign_up_page.dart';
import 'features/splash/splash_page.dart';
import 'services/firebase_auth_service.dart';

class AppModule extends Module { 
  @override
  List<Bind> get binds => [
        Bind.factory<AuthService>(
          (_) => FirebaseAuthService(),
        ),
        Bind.lazySingleton(
          (i) => GraphqlService(
            authService: i.get<AuthService>(),
          ),
        ),
        Bind.factory<SignInBloc>(
          (i) => SignInBloc(
            authService: i.get<AuthService>(),
            secureStorage: const SecureStorage(),
            
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          NamedRoutes.initial,
          child: (context, args) => const SplashPage(),
          transition: TransitionType.fadeIn,
        ),
        ChildRoute(
          NamedRoutes.home,
          child: (context, args) => const HomePage(),
          transition: TransitionType.fadeIn,
        ),
        ChildRoute(
          NamedRoutes.signIn,
          child: (context, args) => const SignInPage(),
          transition: TransitionType.fadeIn,
        ),
        ChildRoute(
          NamedRoutes.signUp,
          child: (context, args) => const SignUpPage(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
