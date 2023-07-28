import 'package:diag_med_beta/routes.dart';
import 'package:diag_med_beta/src/design/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool keepConnected = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.black26,
    ));

    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0.0,
              child: Image.asset(
                'assets/images/group-doctors.png',
                fit: BoxFit.contain,
                height: 227.0,
              ),
            ),
            Positioned(
              top: 0.0,
              child: SizedBox(
                width: size.width,
                height: size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 227.0),
                      _form(context, (size.height) - 227.0),
                      _buttons(context, (size.height) - 227.0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _form(BuildContext context, double height) {
    return Container(
      height: height * 0.7,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bem vindo',
            style: TextStyle(
              fontSize: 32.0,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const Text(
            'Faça login com sua conta',
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: (height * 0.7) * 0.1),
          const TextFieldOutline(
            maxLenght: 60,
            hintText: 'E-mail',
            prefixIcon: Icon(Icons.person),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10.0),
          const TextFieldPassOutline(
            maxLenght: 20,
            hintText: 'Senha',
            prefixIcon: Icon(Icons.lock),
          ),
          const SizedBox(height: 6.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: keepConnected,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() => keepConnected = value);
                        }
                      },
                    ),
                    GestureDetector(
                      child: const Text('Manter conectado?'),
                      onTap: () =>
                          setState(() => keepConnected = !keepConnected),
                    ),
                  ],
                ),
              ),
              TextButton(
                child: const Text(
                  'Esqueceu sua senha?',
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buttons(BuildContext context, double height) {
    return Container(
      height: height * 0.3,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, homeRoute);
                    }),
              ),
            ],
          ),
          TextButton(
            child: Text(
              'Criar uma conta',
              style: TextStyle(
                shadows: [
                  Shadow(
                      color: Theme.of(context).colorScheme.primary,
                      offset: const Offset(0, -2))
                ],
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationColor: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w700,
                fontFamily: 'Metropolis',
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
