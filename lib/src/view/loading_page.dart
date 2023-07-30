import 'package:diag_med_beta/routes.dart';
import 'package:diag_med_beta/src/design/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 2000), () {
        Navigator.of(context).pushReplacementNamed(homeRoute);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: width,
            height: height * .2,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(width, (height * .2).toDouble()),
                  painter: WaveBackPainter(),
                ),
                CustomPaint(
                  size: Size(width, (height * .2).toDouble()),
                  painter: WaveUpPainter(),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Center(
                child: SizedBox(
                  height: width * .32,
                  width: width * .32,
                  child: const CircularProgressIndicator(),
                ),
              ),
              Center(
                child: ElectrocardiogramAnime(
                  repeat: false,
                  width: width * .3,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          SizedBox(
            width: width,
            height: height * .2,
            child: Transform.rotate(
              angle: math.pi,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(width, (height * .2).toDouble()),
                    painter: WaveBackPainter(),
                  ),
                  CustomPaint(
                    size: Size(width, (height * .2).toDouble()),
                    painter: WaveUpPainter(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
