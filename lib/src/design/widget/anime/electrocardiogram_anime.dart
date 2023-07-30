import 'package:flutter/material.dart';

import '../paint/electrocardiogram_painter.dart';

class ElectrocardiogramAnime extends StatefulWidget {
  final bool repeat;
  final double width;
  final Color? color;

  const ElectrocardiogramAnime({
    super.key,
    this.color,
    this.repeat = false,
    required this.width,
  });

  @override
  State<ElectrocardiogramAnime> createState() => _ElectrocardiogramAnimeState();
}

class _ElectrocardiogramAnimeState extends State<ElectrocardiogramAnime>
    with SingleTickerProviderStateMixin {
  late AnimationController _animeController;
  late Animation<double> _factorCount;

  _repeat() {
    if (_animeController.isCompleted) {
      _animeController.reverse();
    } else if (_animeController.isDismissed) {
      _animeController.forward();
    }
  }

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

    if (widget.repeat) {
      _factorCount.addListener(_repeat);
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animeController.forward();
    });
  }

  @override
  void dispose() {
    if (widget.repeat) {
      _factorCount.removeListener(_repeat);
    }
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
            color: widget.color ?? Theme.of(context).colorScheme.onPrimary,
          ),
        );
      },
    );
  }
}
