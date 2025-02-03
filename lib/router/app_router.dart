import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stihl_store/screens/cart/cart_screen.dart';
import 'package:stihl_store/screens/change_password/change_password_screen.dart';
import 'package:stihl_store/screens/home/home_screen.dart';
import 'package:stihl_store/screens/login/login_screen.dart';
import 'package:stihl_store/screens/notifications/notifications_screen.dart';
import 'package:stihl_store/screens/order/order_screen.dart';
import 'package:stihl_store/screens/otp/otp_screen.dart';
import 'package:stihl_store/screens/password/password_screen.dart';
import 'package:stihl_store/screens/payment/payment_screen.dart';
import 'package:stihl_store/screens/product/product_screen.dart';
import 'package:stihl_store/screens/profile/profile_screen.dart';
import 'package:stihl_store/screens/purchase_history/purchase_history_screen.dart';
import 'package:stihl_store/screens/restore/restore_screen.dart';
import 'package:stihl_store/screens/select_address/select_address.dart';
import 'package:stihl_store/screens/settings/settings_screen.dart';
import 'package:stihl_store/screens/signup/signup_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
          // initial: true,
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
        AutoRoute(
          page: SelectAddressRoute.page,
          path: '/address',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          initial: true,
        ),
        AutoRoute(
          page: ProductRoute.page,
          path: '/product',
        ),
        AutoRoute(
          page: CartRoute.page,
          path: '/cart',
        ),
        AutoRoute(
          page: PaymentRoute.page,
          path: '/payment',
        ),
        AutoRoute(
          page: OrderRoute.page,
          path: '/order',
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: '/profile',
        ),
        AutoRoute(
          page: NotificationsRoute.page,
          path: '/notifications',
        ),
        AutoRoute(
          page: SettingsRoute.page,
          path: '/settings',
        ),
        AutoRoute(
          page: PurchaseHistoryRoute.page,
          path: '/purchase_history',
        ),
      ];
}
