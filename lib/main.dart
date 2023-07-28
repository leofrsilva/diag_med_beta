import 'package:diag_med_beta/src/design/theme/theme_light.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DiagMed',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: colorSchemeLight,
        useMaterial3: true,
      ),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: splashRoute,
    );
  }
}
