import 'package:flutter/material.dart';

import '../paint/electrocardiogram_painter.dart';

class ElectrocardiogramAnime extends StatefulWidget {
  final double width;

  const ElectrocardiogramAnime({
    super.key,
    required this.width,
  });

  @override
  State<ElectrocardiogramAnime> createState() => _ElectrocardiogramAnimeState();
}

class _ElectrocardiogramAnimeState extends State<ElectrocardiogramAnime>
    with SingleTickerProviderStateMixin {
  late AnimationController _animeController;
  late Animation<double> _factorCount;

  @override
  void initState() {
    super.initState();
    _animeController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _factorCount = Tween<double>(
      begin: 0,
      end: pointersElectrocardiogram.length.toDouble(),
    ).animate(_animeController);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animeController.forward();
    });
  }

  @override
  void dispose() {
    _animeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _factorCount,
      builder: (context, child) {
        return CustomPaint(
          size: Size(widget.width, (widget.width * 1).toDouble()),
          painter: ElectrocardiogramPainter(
            stop: _factorCount.value.toInt(),
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        );
      },
    );
  }
}
