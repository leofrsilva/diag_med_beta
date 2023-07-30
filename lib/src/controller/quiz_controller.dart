import 'package:flutter/material.dart';

class QuizController {
  QuizController() {
    indexQuiz = ValueNotifier<int>(0);
    titleQuiz = ValueNotifier<String>(listTitleQuiz[0]);
    subtitleQuiz = ValueNotifier<String>(listSubTitleQuiz[0]);
    indexQuiz.addListener(_changeQuiz);
  }

  void dispose() {
    titleQuiz.dispose();
    subtitleQuiz.dispose();
    indexQuiz.removeListener(_changeQuiz);
    indexQuiz.dispose();
  }

  _changeQuiz() {
    titleQuiz.value = listTitleQuiz[indexQuiz.value];
    subtitleQuiz.value = listSubTitleQuiz[indexQuiz.value];
  }

  set quiz(int index) => indexQuiz.value = index;

  late ValueNotifier<int> indexQuiz;
  late ValueNotifier<String> titleQuiz;
  late ValueNotifier<String> subtitleQuiz;

  final listTitleQuiz = <String>[
    'Odinofagia',
    'Odinofagia',
    'Provável Diagnóstico',
    'Abscesso retrofaríngeo',
    //
    'Abscesso retrofaríngeo',
    'Abscesso retrofaríngeo',
    'Abscesso retrofaríngeo',
    'Abscesso retrofaríngeo',
  ];

  final listSubTitleQuiz = <String>[
    'O que você visualiza ao exame da orofaringe?',
    'Qual das seguintes situações?',
    'Abscesso retrofaringeo',
    '',
    //
    '',
    '',
    '',
    '',
  ];

  final quiz0Odinofagia = [
    {
      'index': 0,
      'title': 'Petéquias',
      'img':
          'https://3.bp.blogspot.com/-7T-hTRgtrlQ/T02In_7L-dI/AAAAAAAABKc/f2o534qhlYU/s1600/pet%C3%A9quias.jpg'
    },
    {
      'index': 1,
      'title': 'Visualização prejudicada;\nAbertura da bola limitada pela dor.',
      'img': ''
    },
    {
      'index': 2,
      'title':
          'Membrana branco-acinzentada em \ntonsilas, úvula e adjacecntes.',
      'img': ''
    },
    {
      'index': 3,
      'title': 'Hiperemia',
      'img':
          'https://cdn.coverstand.com/52909/683931/article_assets/58c868fb321fe1309c91fa5f715ce8165e458547.jpg'
    },
    {'index': 4, 'title': 'Aftas / Vesículas / Úlceras', 'img': ''},
    {'index': 5, 'title': 'Exsudato purulento', 'img': ''},
  ];

  final quiz1dinofagia = [
    {
      'index': 0,
      'title':
          'Criança geralmente menor que cinco anos com disfagia, torcicolo e mais raramente estridor; Abaulamento lateral da parede posterior da faringe; Abaulamento Cervical.'
    },
    {
      'index': 1,
      'title':
          'Disfagia + Sialorreia + Trismo Abaulamento amigdaliano unilateral que rechaça a úvula para o lado oposto; Abaulamento Cervical.'
    },
  ];

  final quiz2abscesso = '''
INTERNAR E SOLICITAR TOMOGRAFIA COMPUTADORIZADA CERVICAL COM CONTRASTE + PARECER DO OTORRINOLARINGOLOGISTA

ANTIBIOTICOTERAPIA: CEFALOSPORINA DE 3ª GERAÇÃO COM AMPICILINA-SULBACTAM OU CLINDAMICINA.
HIDRATAÇÃO VENOSA + ANALGÉSIGOS/ANTI-TÉRMICOS

A INTERVENÇÃO CIRÚRGICA NÃO PRECISA SER IMEDIATA. SÓ HÁ RECOMENDAÇÃO DE DRENAGEM IMEDIATA QUANDO HÁ PROGRESSÃO DE DIFICULDADE RESPIRATÓRIA POR OBSTRUÇÃO OU QUANDO HÁ FALHA DO TRATAMENTO ANTIMICROBIANO.

O QUADRO DE DISPNEIA INTENSA, DOR TORÁCICA E FEBRE PERSISTENTE LEVANTAM A SUSPEITA DE UMA COMPLICAÇÃO DO QUADRO: MEDIASTINITE.
  ''';

  final quiz3abscesso = [
    {
      'index': 0,
      'title': 'OPÇÕES DE ANTIBIÓTICOTERAPIA',
      'options': [
        'CEFTRIAXONE + AMPICILINA / SULBACTAM',
        'CEFTRIAXONE + CLINDAMICINA'
      ]
    },
    {
      'index': 1,
      'title': 'OPÇÕES DE SINTOMÁTICOS',
      'options': ['DIPIRONA', 'PARACETAMOL']
    },
  ];

  final quiz4abscessoPrescricao1 = {
    'prescription': [
      'Ceftriaxone 1g - 1 FA para 10 ml de AD - aplicar 7,5ml + 50ml de SF0,9% EV 12/12 horas.',
      'Ampicilina/Sulbactam (1g/0,5g) - 1FA para 10ml de AD - aplicar 7,5ml EV 6/6 horas.'
    ],
    'dosage': [
      'Ceftriaxone 100mg/kg/dia.',
      'Ampicilina/Sulbactam 200mg/kg/dia.'
    ]
  };

  final quiz4abscessoPrescricao2 = {
    'prescription': [
      'Ceftriaxone 1g - 1 FA para 10 ml de AD - aplicar 7,5ml + 50ml de SF0,9% EV 12/12 horas.',
      'Clindamicina 150mg/ml - Aplicar 0,8ml + 50ml SF0,9% EV 6/6 horas.'
    ],
    'dosage': ['Ceftriaxone 100mg/kg/dia.', 'Clindamicina 30mg/kg/dia.']
  };

  final quiz4abscessoPrescricao3 = {
    'prescription': [
      'Dipirona (500mg/ml) - Aplicar 0,5ml + 5ml de AD EV 6/6 horas se dor ou febre.'
    ],
    'dosage': ['Dipirona 15mg/kg/dose.']
  };

  final quiz4abscessoPrescricao4 = {
    'prescription': [
      'Ampicilina/Sulbactam (1g/0,5g) - 1FA para 10ml de AD - aplicar 7,5ml EV 6/6 horas.'
    ],
    'dosage': ['Ampicilina/Sulbactam 250mg/kg/dia.']
  };

  void showImage(BuildContext context, String title, String img) async {
    await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28.0),
            topRight: Radius.circular(28.0),
          )),
          titlePadding: const EdgeInsets.all(14.0),
          contentPadding: const EdgeInsets.all(0.0),
          title: Row(
            children: [
              Expanded(
                  child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                ),
              )),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.network(img),
            ),
          ],
        );
      },
    );
  }

  void showListTile(BuildContext context, List<String> listTile) async {
    await showDialog(
      context: context,
      builder: (builder) {
        return SimpleDialog(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            ...listTile.map((str) {
              return ListTile(
                title: Text(
                  str,
                  style: const TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ],
        );
      },
    );
  }
}
