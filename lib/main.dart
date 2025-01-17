import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stihl_store/bloc/auth/auth_bloc.dart';
import 'package:stihl_store/router/app_router.dart';

void main() {
  GetIt.I.registerLazySingleton(() => AuthBloc());
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
    );
  }
}
