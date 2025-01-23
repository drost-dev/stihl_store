part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthLoad extends AuthEvent {}

class AuthLogin extends AuthEvent {
  final String email;
  final String password;

  AuthLogin(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class AuthSignUp extends AuthEvent {
  final String name;
  final String surname;
  final String login;
  final String password;
  final String email;

  AuthSignUp(
      {required this.email,
      required this.password,
      required this.name,
      required this.surname,
      required this.login});

  @override
  List<Object?> get props => [name, surname, login, password, email];
}

class AuthConfirmSignUp extends AuthEvent {
  final String phone;
  final String code;

  AuthConfirmSignUp(this.phone, this.code);

  @override
  List<Object?> get props => [phone, code];
}

class AuthRequestPasswordReset extends AuthEvent {
  final String email;

  AuthRequestPasswordReset({required this.email});

  @override
  List<Object?> get props => [email];
}

class AuthResetPassword extends AuthEvent {
  final String email;
  final String code;

  AuthResetPassword({required this.email, required this.code});

  @override
  List<Object?> get props => [email, code];
}

class AuthSetNewPassword extends AuthEvent {
  final String email;
  final String password;

  AuthSetNewPassword({required this.password, required this.email});

  @override
  List<Object?> get props => [email, password];
}
