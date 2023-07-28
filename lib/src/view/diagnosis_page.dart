import 'package:diag_med_beta/src/design/widget/widgets.dart';
import 'package:flutter/material.dart';

class DiagnosisPage extends StatefulWidget {
  const DiagnosisPage({super.key});

  @override
  State<DiagnosisPage> createState() => DiagnosisPageState();
}

class DiagnosisPageState extends State<DiagnosisPage> {
  int selectedIndex = 0;

  changeIndex(int index) {
    setState(() => selectedIndex = index);
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

    return Material(
      // appBar: AppBar(
      //   title: const Text(
      //     'Algorítmo diagnóstico',
      //     style: TextStyle(fontWeight: FontWeight.w600),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsetsDirectional.only(end: 8.0),
      //       child: IconButton(
      //         icon: const Icon(Icons.more_vert),
      //         onPressed: () {},
      //       ),
      //     ),
      //   ],
      // ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextFieldOutline(
              hintText: 'Pesquise aqui...',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
              child: ListView(
                children: symptoms.map((Map<String, Object> map) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    child: TitleButton(
                      title: map['symptom'] as String,
                      onTap: map['action'] as Function(),
                      selected: (map['index'] as int) == selectedIndex,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
