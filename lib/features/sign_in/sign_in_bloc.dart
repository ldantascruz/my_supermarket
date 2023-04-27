// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:compras/features/sign_in/sign_in_event.dart';
import 'package:compras/features/sign_in/sign_in_state.dart';
import 'package:compras/services/auth_service.dart';
import 'package:compras/services/secure_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../common/constants/routes.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthService authService;
  final SecureStorage secureStorage;

  SignInBloc({
    required this.authService,
    required this.secureStorage,
  }) : super(SignInStateInitial()) {
    on<SignInSubmitted>(_signIn);
    on<SignInJumpToPage>(_jumpToPage);
  }

  Future<void> _signIn(SignInEvent event, Emitter emitter) async {
    const secureStorage = SecureStorage();

    try {} catch (e) {}
  }

  Future<void> _jumpToPage(SignInEvent event, Emitter emitter) async {
    Future.delayed(const Duration(seconds: 1)).then(
      (_) => Modular.to.navigate(NamedRoutes.signUp),
    );
  }
}