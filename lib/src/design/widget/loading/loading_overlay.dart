import 'package:flutter/material.dart';

import '../anime/anime.dart';

class LoadingOverlay {
  static Future<T?> show<T>(BuildContext context, Future<T> future) async {
    final overlay = OverlayEntry(
      opaque: false,
      maintainState: true,
      builder: (_) => const _FullScreenLoader(),
    );
    Overlay.of(context).insert(overlay);

    T? result;
    await future.then((value) {
      result = value;
      overlay.remove();
    });

    return result;
  }
}

class _FullScreenLoader extends StatefulWidget {
  const _FullScreenLoader({Key? key}) : super(key: key);

  @override
  State<_FullScreenLoader> createState() => _FullScreenLoaderState();
}

class _FullScreenLoaderState extends State<_FullScreenLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      decoration: const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.6)),
      child: Center(
        child: ElectrocardiogramAnime(
          repeat: true,
          width: MediaQuery.of(context).size.width * .25,
        ),
      ),
    );
  }
}
