import 'package:diag_med_beta/routes.dart';
import 'package:flutter/material.dart';

import '../design/widget/widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacementNamed(context, loginRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Material(
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo-transparent.png',
            width: size.width * .4,
          ),
          const SizedBox(height: 12.0),
          const ElectrocardiogramAnime(
            width: 100.0,
          ),
          const SizedBox(height: 12.0),
        ],
      ),
    );
  }
}
