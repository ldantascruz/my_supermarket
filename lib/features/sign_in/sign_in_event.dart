// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../common/constants/routes.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SingInEmailChanged extends SignInEvent {
  final String email;

  const SingInEmailChanged({
    required this.email,
  });

  @override
  List<Object> get props => [email];
}

class SingInPasswoedChanged extends SignInEvent {
  final String password;

  const SingInPasswoedChanged({
    required this.password,
  });

  @override
  List<Object> get props => [password];
}

class SignInSubmitted extends SignInEvent {}

class SignInJumpToPageSignUp extends SignInEvent {
  Future<void> jumpToPage(String pageName) async {
    Future.delayed(const Duration(seconds: 1)).then(
      (_) => Modular.to.navigate(NamedRoutes.signUp),
    );
  }
}

class SignInJumpToPageHome extends SignInEvent {
  Future<void> jumpToPage(String pageName) async {
    Future.delayed(const Duration(seconds: 1)).then(
      (_) => Modular.to.navigate(NamedRoutes.home),
    );
  }
}
