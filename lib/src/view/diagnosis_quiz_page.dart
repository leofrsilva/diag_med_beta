import 'package:diag_med_beta/src/controller/quiz_controller.dart';
import 'package:diag_med_beta/src/design/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiagnosisQuizPage extends StatefulWidget {
  const DiagnosisQuizPage({super.key});

  @override
  State<DiagnosisQuizPage> createState() => _DiagnosisQuizPageState();
}

class _DiagnosisQuizPageState extends State<DiagnosisQuizPage> {
  late QuizController _controller;

  @override
  void initState() {
    super.initState();
    _controller = QuizController();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<QuizController>(
      create: (_) => _controller,
      dispose: (_, quizController) => quizController.dispose(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Questionário',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    ValueListenableBuilder<int>(
                        valueListenable: _controller.indexQuiz,
                        builder: (context, index, child) {
                          if (index < 1) return const SizedBox.shrink();
                          return Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: IconButton(
                              icon: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                padding: const EdgeInsetsDirectional.only(
                                  top: 4.0,
                                  start: 8.0,
                                  bottom: 4.0,
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              onPressed: () {
                                if (_controller.indexQuiz.value == 0) {
                                  Navigator.of(context).pop();
                                } else if (_controller.indexQuiz.value < 4) {
                                  _controller.quiz =
                                      _controller.indexQuiz.value - 1;
                                } else {
                                  _controller.quiz = 3;
                                }
                              },
                            ),
                          );
                        }),
                    Expanded(
                      child: Card(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: 10.0),
                                Expanded(
                                    child: Divider(
                                  color: Theme.of(context).colorScheme.primary,
                                )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 10.0,
                                  ),
                                  child: _buildTitle(context),
                                ),
                                Expanded(
                                    child: Divider(
                                  color: Theme.of(context).colorScheme.primary,
                                )),
                                const SizedBox(width: 10.0),
                              ],
                            ),
                            _buildSubTitle(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ValueListenableBuilder<int>(
                  valueListenable: _controller.indexQuiz,
                  builder: (context, index, child) {
                    if (index == 0) return _quiz0(context);
                    if (index == 1) return _quiz1(context);
                    if (index == 2) return _quiz2(context);
                    if (index == 3) return _quiz3(context);
                    if ((index >= 4) && (index <= 7)) {
                      return _quiz4(context, (index - 3));
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return ValueListenableBuilder<String>(
        valueListenable: _controller.titleQuiz,
        builder: (context, title, child) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * .6,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          );
        });
  }

  Widget _buildSubTitle(BuildContext context) {
    return ValueListenableBuilder<String>(
        valueListenable: _controller.subtitleQuiz,
        builder: (context, subTitle, child) {
          if (subTitle.isEmpty) {
            return const SizedBox.shrink();
          }
          return Column(
            children: [
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const SizedBox(height: 18.0),
            ],
          );
        });
  }

  _quiz0(BuildContext context) {
    return Column(
      children: _controller.quiz0Odinofagia.map<Widget>((map) {
        var img = map['img'] as String;
        return Column(
          children: [
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              title: Text(
                map['title'] as String,
                style: const TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: InkWell(
                onTap: img.isNotEmpty
                    ? () => _controller.showImage(
                        context, map['title'] as String, img)
                    : null,
                borderRadius: BorderRadius.circular(100.0),
                splashColor: Theme.of(context).colorScheme.secondaryContainer,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: img.isEmpty
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.photo_camera,
                    color: img.isEmpty
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              onTap: () => _controller.quiz = 1,
            ),
            if ((map['index'] as int) <
                (_controller.quiz0Odinofagia.length - 1))
              const Divider(),
          ],
        );
      }).toList(),
    );
  }

  _quiz1(BuildContext context) {
    return Column(
      children: _controller.quiz1dinofagia.map((map) {
        return Column(
          children: [
            InkWell(
              onTap: () => _controller.quiz = 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    width: 1.5,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      map['title'] as String,
                      style: const TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.photo_camera,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if ((map['index'] as int) < (_controller.quiz1dinofagia.length - 1))
              const SizedBox(height: 16.0),
          ],
        );
      }).toList(),
    );
  }

  _quiz2(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(_controller.quiz2abscesso),
                ),
              ],
            ),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              child: const Text(
                'Descrição',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                ),
              ),
              onPressed: () => _controller.quiz = 3,
            ),
          ],
        ),
      ),
    );
  }

  _quiz3(BuildContext context) {
    Map<String, int> opIndexs = {};
    int indexOpPrescricao = 0;

    return Column(
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.only(
            bottom: 16.0,
          ),
          child: TextFieldOutline(
            hintText: 'Digite o peso do paciente...',
          ),
        ),
        const SizedBox(height: 16.0),
        ..._controller.quiz3abscesso.map((optionAbscesso) {
          return Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  optionAbscesso['title'] as String,
                  style: const TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              ...(optionAbscesso['options'] as List<String>).map((opButton) {
                indexOpPrescricao += 1;
                opIndexs[opButton] = indexOpPrescricao;

                return Container(
                  width: MediaQuery.of(context).size.width * .8,
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                    ),
                    child: Text(
                      opButton,
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      if (opIndexs.containsKey(opButton)) {
                        _controller.quiz = opIndexs[opButton]! + 3;
                      }
                    },
                  ),
                );
              }).toList(),
              if ((optionAbscesso['index'] as int) <
                  (_controller.quiz3abscesso.length - 1))
                const SizedBox(height: 24.0)
            ],
          );
        }).toList(),
        const SizedBox(height: 20.0),
      ],
    );
  }

  _quiz4(BuildContext context, int indexPrescricao) {
    Map<String, List<String>>? prescricao;
    switch (indexPrescricao) {
      case 1:
        prescricao = _controller.quiz4abscessoPrescricao1;
        break;
      case 2:
        prescricao = _controller.quiz4abscessoPrescricao2;
        break;
      case 3:
        prescricao = _controller.quiz4abscessoPrescricao3;
        break;
      case 4:
        prescricao = _controller.quiz4abscessoPrescricao4;
        break;
      default:
        prescricao = {};
    }
    if (prescricao.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.only(
            end: 16.0,
            start: 16.0,
            bottom: 16.0,
          ),
          child: Text(
            'Prescrição',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ...prescricao['prescription']!.map((p) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * .75,
            ),
            child: Column(
              children: [
                Text(p,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Metropolis',
                    )),
                const SizedBox(height: 16.0),
              ],
            ),
          );
        }).toList(),
        const SizedBox(height: 20.0),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * .75,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.question_mark_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                onPressed: () {
                  if (prescricao!.containsKey('dosage')) {
                    _controller.showListTile(context, prescricao['dosage']!);
                  }
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
