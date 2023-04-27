import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable {
  final String email;
  final String password;

  const SignInState({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}

class SignInStateInitial implements SignInState {
  @override
  String get email => '';

  @override
  String get password => '';

  @override
  List<Object?> get props => [email, password];

  @override
  bool? get stringify => throw UnimplementedError();
}

class SignInStateSuccess implements SignInState {
  final String myEmail;
  final String myPassword;

  SignInStateSuccess({
    required this.myEmail,
    required this.myPassword,
  });

  @override
  String get email => myEmail;

  @override
  String get password => myPassword;

  @override
  List<Object?> get props => [email, password];

  @override
  bool? get stringify => throw UnimplementedError();
}
