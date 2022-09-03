import 'package:auth_ui/core/route/app_route_name.dart';
import 'package:auth_ui/feature/forgot_password/presentation/forgot_password_screen.dart';
import 'package:auth_ui/feature/login/presentation/login_screen.dart';
import 'package:auth_ui/feature/otp/presentation/otp_screen.dart';
import 'package:auth_ui/feature/register/presentation/register_screen.dart';
import 'package:auth_ui/feature/reset_password/presentation/reset_password_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );

      case AppRouteName.forgotPassword:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const ForgotPasswordScreen(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.resetPassword:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const ResetPassword(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from right (x = 1) to center (x = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.register:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const RegisterScreen(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.otp:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const OTPScreen(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from right (x = 1) to center (x = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }

    return null;
  }
}
