import 'package:diag_med_beta/src/controller/home_controller.dart';
import 'package:diag_med_beta/src/design/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late PageController _pageController;

  final menuItems = [
    {'title': 'Medicamentos', 'painter': MedicinePainter()},
    {'title': 'Patologias', 'painter': PathologyPainter()},
    {'title': 'Guia rápido de tratamento', 'painter': NotebookPainter()},
    {'title': 'Banco de imagens', 'painter': PicturePainter()},
    {'title': 'Calculadoras médicas', 'painter': CalculatorPainter()},
    {'title': 'Suporte avançado', 'painter': LifeBarPainter()},
  ];

  @override
  void initState() {
    super.initState();
    _pageController = context.read<HomeController>().pages;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Material(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
        child: ListView(
          children: [
            const SizedBox(height: 26.0),
            const Text.rich(TextSpan(
              text: ' Olá, ',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Metropolis',
              ),
              children: [
                TextSpan(
                  text: 'Dr Renato',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )),
            const SizedBox(height: 8.0),
            Card(
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: InkWell(
                onTap: () => _pageController.jumpToPage(0),
                borderRadius: BorderRadius.circular(8.0),
                child: SizedBox(
                  height: size.height * 0.18,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 22.0,
                          ),
                          child: Text(
                            'Algorítmo diagnóstico',
                            style: TextStyle(
                              fontSize: (size.width * .07) > 30
                                  ? 30
                                  : (size.width * .07),
                              height: 1.2,
                              color: Theme.of(context).colorScheme.primary,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          child: Image.asset(
                            'assets/images/estetoscopio.png',
                            height: 100.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.center,
              children: menuItems.map((Map<String, Object> item) {
                var spacing = 15;
                var width = ((size.width - (12.0 * 2)) / 2) - spacing;
                return ItemButton(
                  width: width,
                  height: width,
                  title: item['title'] as String,
                  icon: CustomPaint(
                    size: Size(width * .35, (width * .35 * 1).toDouble()),
                    painter: item['painter'] as CustomPainter,
                  ),
                  onTap: () {},
                );
              }).toList(),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
