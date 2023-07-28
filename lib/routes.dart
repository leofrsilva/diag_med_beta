import 'package:diag_med_beta/src/view/home_page.dart';
import 'package:diag_med_beta/src/view/login_page.dart';
import 'package:diag_med_beta/src/view/splash_page.dart';
import 'package:flutter/material.dart';

const String splashRoute = '/';
const String loginRoute = '/login';
const String homeRoute = '/home';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );
      case loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      default:
        return _errorRoute;
    }
  }

  static Route get _errorRoute {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(appBar: AppBar(title: const Text("NOT FOUND")));
    });
  }
}
