import 'package:diag_med_beta/routes.dart';
import 'package:diag_med_beta/src/design/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'widget/explicacao_dialog.dart';

import 'dart:math' as math;

class DiagnosisPage extends StatefulWidget {
  const DiagnosisPage({super.key});

  @override
  State<DiagnosisPage> createState() => DiagnosisPageState();
}

class DiagnosisPageState extends State<DiagnosisPage> {
  int selectedIndex = 0;

  changeIndex(int index) async {
    setState(() => selectedIndex = index);
    Navigator.of(context).pushNamed(diagnosisQuizRoute);
  }

  @override
  Widget build(BuildContext context) {
    final symptoms = [
      {'symptom': 'Ordinofagio', 'index': 0, 'action': () => changeIndex(0)},
      {'symptom': 'Sintoma A', 'index': 1, 'action': () => changeIndex(1)},
      {'symptom': 'Sintoma B', 'index': 2, 'action': () => changeIndex(2)},
      {'symptom': 'Sintoma C', 'index': 3, 'action': () => changeIndex(3)},
      {'symptom': 'Sintoma D', 'index': 4, 'action': () => changeIndex(4)},
      {'symptom': 'Sintoma E', 'index': 5, 'action': () => changeIndex(5)},
      {'symptom': 'Sintoma F', 'index': 6, 'action': () => changeIndex(6)},
      {'symptom': 'Sintoma G', 'index': 7, 'action': () => changeIndex(7)},
      {'symptom': 'Sintoma H', 'index': 8, 'action': () => changeIndex(8)},
      {'symptom': 'Sintoma I', 'index': 9, 'action': () => changeIndex(9)},
      {'symptom': 'Sintoma J', 'index': 10, 'action': () => changeIndex(10)},
      {'symptom': 'Sintoma K', 'index': 11, 'action': () => changeIndex(11)},
    ];

    final symptomsDesc = [
      'Odinofagia” é o termo médico utilizado para designar a sensação de dor ao engolir alimentos, ou seja, a dor ao deglutir.',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];

    return Material(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 8.0,
                start: 16.0,
                end: 16.0,
                top: 16.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Busque um sintoma ou sinal?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.only(
              end: 16.0,
              start: 16.0,
              bottom: 16.0,
            ),
            child: TextFieldOutline(
              hintText: 'Pesquise aqui...',
            ),
          ),
          Expanded(
            child: ListView(
              children: symptoms.map((Map<String, Object> map) {
                bool isLast =
                    (symptoms.last['index'] as int) == (map['index'] as int);
                return Padding(
                  padding: EdgeInsets.only(
                    top: 8.0,
                    left: 16.0,
                    right: 16.0,
                    bottom: isLast ? 18.0 : 8.0,
                  ),
                  child: TitleButton(
                    selected: (map['index'] as int) == selectedIndex,
                    title: map['symptom'] as String,
                    onTap: map['action'] as Function(),
                    onTapInterrogation: () async {
                      setState(() => selectedIndex = map['index'] as int);
                      await showDialog(
                        context: context,
                        builder: (context) {
                          return ExplicacaoDialog(
                            title: map['symptom'] as String,
                            content: symptomsDesc[map['index'] as int],
                          );
                        },
                      );
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
