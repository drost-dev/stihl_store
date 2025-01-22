import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stihl_store/screens/change_password/change_password_screen.dart';
import 'package:stihl_store/screens/login/login_screen.dart';
import 'package:stihl_store/screens/otp/otp_screen.dart';
import 'package:stihl_store/screens/password/password_screen.dart';
import 'package:stihl_store/screens/restore/restore_screen.dart';
import 'package:stihl_store/screens/signup/signup_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
          initial: true,
        ),
        AutoRoute(
          page: SignUpRoute.page,
          path: '/signup',
        ),
        AutoRoute(
          page: PasswordRoute.page,
          path: '/password',
        ),
        AutoRoute(
          page: RestoreRoute.page,
          path: '/restore',
        ),
        AutoRoute(
          page: OtpRoute.page,
          path: '/otp',
        ),
        AutoRoute(
          page: ChangePasswordRoute.page,
          path: '/change_password',
        ),
      ];
}
