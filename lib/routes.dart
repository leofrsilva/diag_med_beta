import 'package:diag_med_beta/src/view/diagnosis_quiz_page.dart';
import 'package:diag_med_beta/src/view/home_page.dart';
import 'package:diag_med_beta/src/view/loading_page.dart';
import 'package:diag_med_beta/src/view/login_page.dart';
import 'package:diag_med_beta/src/view/splash_page.dart';
import 'package:flutter/material.dart';

const String splashRoute = '/';
const String loginRoute = '/login';
const String loadingRoute = '/loading';
const String homeRoute = '/home';
const String diagnosisQuizRoute = '/diagnosis-quiz';

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
      case loadingRoute:
        return MaterialPageRoute(
          builder: (_) => const LoadingPage(),
        );
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case diagnosisQuizRoute:
        return MaterialPageRoute(
          builder: (_) => const DiagnosisQuizPage(),
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
