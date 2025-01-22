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

  AuthSignUp(this.email, this.password, this.name, this.surname, this.login);

  @override
  List<Object?> get props => [name, surname, login, password, email];
}
