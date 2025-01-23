import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:stihl_store/repos/database/supabase_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthLoading()) {
    SupabaseRepo sbRepo = GetIt.I<SupabaseRepo>();
    on<AuthEvent>((event, emit) async {
      switch (event) {
        case AuthLoad():
          emit(AuthLoading());
          emit(AuthLoaded());
          break;
        case AuthLogin():
          try {
            emit(AuthLoading());
            await sbRepo.login(email: event.email, password: event.password);
            emit(AuthSuccess());
          } catch (e) {
            switch (e) {
              case AuthException():
                emit(AuthError(e.message));
                emit(AuthLoaded());
                break;
            }
          }
          break;
        case AuthSignUp():
          try {
            emit(AuthLoading());
            await sbRepo.signUp(
              name: event.name,
              surname: event.surname,
              login: event.login,
              password: event.password,
              email: event.email,
            );
            emit(AuthWaitingSignupConfirmation());
          } catch (e) {
            switch (e) {
              case AuthException():
                emit(AuthError(e.message));
                emit(AuthLoaded());
                break;
            }
          }
          break;
        case AuthConfirmSignUp():
          try {
            emit(AuthLoading());
            await sbRepo.confirmSignUp(email: event.phone, code: event.code);
            emit(AuthSuccess());
          } catch (e) {
            switch (e) {
              case AuthException():
                emit(AuthError(e.message));
                break;
            }
          }
          break;
        case AuthRequestPasswordReset():
          try {
            emit(AuthLoading());
            await sbRepo.requestPasswordReset(email: event.email);
            emit(AuthWaitingResetPassword());
          } catch (e) {
            switch (e) {
              case AuthException():
                emit(AuthError(e.message));
                break;
            }
          }
          break;
        case AuthResetPassword():
          try {
            emit(AuthLoading());
            await sbRepo.requestPasswordReset(email: event.email);
            emit(AuthWaitingNewPassword());
          } catch (e) {
            switch (e) {
              case AuthException():
                emit(AuthError(e.message));
                break;
            }
          }
          break;
        case AuthSetNewPassword():
          try {
            emit(AuthLoading());
            await sbRepo.setNewPassword(
              email: event.email,
              newPassword: event.password,
            );
            emit(AuthSuccess());
          } catch (e) {
            switch (e) {
              case AuthException():
                emit(AuthError(e.message));
                break;
            }
          }
          break;
      }
    });
  }
}
