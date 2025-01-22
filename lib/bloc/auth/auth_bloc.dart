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
            await sbRepo.login(email: event.email, password: event.password);
            emit(AuthSuccess());
          } catch (e) {
            switch (e) {
              case AuthException():
                emit(AuthError(e.message));
                break;
            }
          }
          break;
        case AuthSignUp():
          try {
            await sbRepo.signUp(
              name: event.name,
              surname: event.surname,
              login: event.login,
              password: event.password,
              email: event.email,
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
