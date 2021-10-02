import 'package:cloudmate/src/blocs/authentication/bloc.dart';

abstract class AuthEvent {}

class OnAuthCheck extends AuthEvent {}

class OnAuthProcess extends AuthEvent {
  final String username;
  final String password;
  OnAuthProcess({required this.username, required this.password});
}

class OnClear extends AuthEvent {}

class RegisterEvent extends AuthEvent {
  final String firstName;
  final String lastName;
  final String username;
  final String password;
  RegisterEvent({
    required this.username,
    required this.password,
    required this.firstName,
    required this.lastName,
  });
}

class LoginEvent extends AuthEvent {
  final String username;
  final String password;
  LoginEvent({required this.username, required this.password});
}

class LogOutEvent extends AuthEvent {}

class GetInfoUser extends AuthEvent {}