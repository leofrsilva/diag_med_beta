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
  late HomeController controller;
  final GlobalKey<ScaffoldState> _keyScaffold = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => controller,
      child: Scaffold(
        key: _keyScaffold,
        drawer: const MenuDrawer(),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => _keyScaffold.currentState?.openDrawer(),
          ),
          title: const TextFieldAppbar(
            hintText: 'Pesquise aqui...',
          ),
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
          controller: controller.pages,
          children: [
            const DiagnosisPage(),
            const DashboardPage(),
            Container(),
          ],
        ),
        bottomNavigationBar: ValueListenableBuilder<int>(
            valueListenable: controller.indexPage,
            builder: (context, index, child) {
              return NavigationBar(
                selectedIndex: index,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                onDestinationSelected: (index) {
                  controller.pages.jumpToPage(index);
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
    );
  }
}
