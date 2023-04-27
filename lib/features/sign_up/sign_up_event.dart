// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SingUpEmailChanged extends SignUpEvent {
  final String email;

  const SingUpEmailChanged({
    required this.email,
  });

  @override
  List<Object> get props => [email];
}

class SingUpPasswoedChanged extends SignUpEvent {
  final String password;

  const SingUpPasswoedChanged({
    required this.password,
  });

  @override
  List<Object> get props => [password];
}

class SignUpSubmitted extends SignUpEvent {}

class SignUpJumpToPage extends SignUpEvent {}
