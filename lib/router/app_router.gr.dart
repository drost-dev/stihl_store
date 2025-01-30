// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CartScreen();
    },
  );
}

/// generated route for
/// [ChangePasswordScreen]
class ChangePasswordRoute extends PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    Key? key,
    required String phone,
    List<PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(
            key: key,
            phone: phone,
          ),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChangePasswordRouteArgs>();
      return ChangePasswordScreen(
        key: args.key,
        phone: args.phone,
      );
    },
  );
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    required this.phone,
  });

  final Key? key;

  final String phone;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, phone: $phone}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [OtpScreen]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    Key? key,
    required String phone,
    bool signup = false,
    List<PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(
            key: key,
            phone: phone,
            signup: signup,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>();
      return OtpScreen(
        key: args.key,
        phone: args.phone,
        signup: args.signup,
      );
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({
    this.key,
    required this.phone,
    this.signup = false,
  });

  final Key? key;

  final String phone;

  final bool signup;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, phone: $phone, signup: $signup}';
  }
}

/// generated route for
/// [PasswordScreen]
class PasswordRoute extends PageRouteInfo<PasswordRouteArgs> {
  PasswordRoute({
    Key? key,
    required String phone,
    List<PageRouteInfo>? children,
  }) : super(
          PasswordRoute.name,
          args: PasswordRouteArgs(
            key: key,
            phone: phone,
          ),
          initialChildren: children,
        );

  static const String name = 'PasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PasswordRouteArgs>();
      return PasswordScreen(
        key: args.key,
        phone: args.phone,
      );
    },
  );
}

class PasswordRouteArgs {
  const PasswordRouteArgs({
    this.key,
    required this.phone,
  });

  final Key? key;

  final String phone;

  @override
  String toString() {
    return 'PasswordRouteArgs{key: $key, phone: $phone}';
  }
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<void> {
  const ProductRoute({List<PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProductScreen();
    },
  );
}

/// generated route for
/// [RestoreScreen]
class RestoreRoute extends PageRouteInfo<void> {
  const RestoreRoute({List<PageRouteInfo>? children})
      : super(
          RestoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'RestoreRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RestoreScreen();
    },
  );
}

/// generated route for
/// [SelectAddressScreen]
class SelectAddressRoute extends PageRouteInfo<void> {
  const SelectAddressRoute({List<PageRouteInfo>? children})
      : super(
          SelectAddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectAddressRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SelectAddressScreen();
    },
  );
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignUpScreen();
    },
  );
}
