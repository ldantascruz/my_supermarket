import 'package:equatable/equatable.dart';

abstract class SignUpState extends Equatable {
  final String email;
  final String password;

  const SignUpState({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}

class SignUpStateInitial implements SignUpState {
  @override
  String get email => '';

  @override
  String get password => '';

  @override
  List<Object?> get props => [email, password];

  @override
  bool? get stringify => throw UnimplementedError();
}

class SignUpStateSuccess implements SignUpState {
  
  final String myEmail;
  final String myPassword;

  SignUpStateSuccess({
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

class SignUpStateLoading implements SignUpState {  
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}