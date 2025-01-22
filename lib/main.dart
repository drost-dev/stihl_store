import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stihl_store/bloc/auth/auth_bloc.dart';
import 'package:stihl_store/repos/database/supabase_repo.dart';
import 'package:stihl_store/router/app_router.dart';
import 'package:stihl_store/themes/default.dart';

void main() async {
  GetIt.I.registerLazySingleton(() => AuthBloc());

  final SupabaseRepo sbRepo = await SupabaseRepo.init();
  GetIt.I.registerSingleton(sbRepo);

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
    );
  }
}
