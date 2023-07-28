import 'package:flutter/material.dart';

class HomeController {
  late ValueNotifier<int> indexPage;
  late PageController _pageController;
  PageController get pages => _pageController;

  HomeController() {
    indexPage = ValueNotifier<int>(1);
    _pageController = PageController(initialPage: 1)..addListener(_changePage);
  }

  _changePage() {
    indexPage.value = _pageController.page?.toInt() ?? 0;
  }
}
