// ignore_for_file: public_member_api_docs, sort_constructors_first, invalid_use_of_visible_for_testing_member
import 'package:compras/features/sign_up/sign_up_event.dart';
import 'package:compras/features/sign_up/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:compras/services/auth_service.dart';
import 'package:compras/services/secure_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../common/constants/routes.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthService authService;
  final SecureStorage secureStorage;

  SignUpBloc({
    required this.authService,
    required this.secureStorage,
  }) : super(SignUpStateInitial()) {
    on<SignUpSubmitted>(_signUp);
    on<SignUpJumpToPage>(_jumpToPage);
  }

  Future<void> _signUp(SignUpEvent event, Emitter emitter) async {
    const secureStorage = SecureStorage();

    try {} catch (e) {}
  }

  Future<void> _jumpToPage(SignUpEvent event, Emitter emitter) async {
    Future.delayed(const Duration(milliseconds: 500)).then(
      (_) => Modular.to.pushNamed(NamedRoutes.signIn),
    );
  }
}
