import 'package:diag_med_beta/src/controller/home_controller.dart';
import 'package:diag_med_beta/src/design/widget/widgets.dart';
import 'package:diag_med_beta/src/view/dashboard_page.dart';
import 'package:diag_med_beta/src/view/diagnosis_page.dart';
import 'package:diag_med_beta/src/view/widget/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController _controller;
  final GlobalKey<ScaffoldState> _keyScaffold = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<HomeController>(
      create: (_) => _controller,
      dispose: (_, homeController) => homeController.dispose(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: _keyScaffold,
          drawer: const MenuDrawer(),
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => _keyScaffold.currentState?.openDrawer(),
            ),
            title: ValueListenableBuilder<int>(
                valueListenable: _controller.indexPage,
                builder: (context, index, child) {
                  if (index == 0) {
                    return const Text(
                      'Algorítmo diagnóstico',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    );
                  }
                  return const TextFieldAppbar(
                    hintText: 'Pesquise aqui...',
                  );
                }),
            actions: [
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8.0),
                child: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          body: PageView(
            controller: _controller.pages,
            children: [
              const DiagnosisPage(),
              const DashboardPage(),
              Container(),
            ],
          ),
          bottomNavigationBar: ValueListenableBuilder<int>(
              valueListenable: _controller.indexPage,
              builder: (context, index, child) {
                return NavigationBar(
                  selectedIndex: index,
                  labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                  onDestinationSelected: (index) {
                    _controller.pages.jumpToPage(index);
                  },
                  destinations: const [
                    NavigationDestination(
                      icon: Icon(Icons.medical_services),
                      label: 'Diagnosis',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.account_circle_rounded),
                      label: 'Account',
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
