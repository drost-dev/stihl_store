part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class AuthLoading extends AuthState {}

final class AuthLoadingError extends AuthState {}

final class AuthLoaded extends AuthState {}

final class AuthError extends AuthState {
  final String message;

  AuthError(this.message);

  @override
  List<Object?> get props => [message];
}

final class AuthSuccess extends AuthState {}