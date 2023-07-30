import 'package:flutter/material.dart';

class ExplicacaoDialog extends StatelessWidget {
  final String title;
  final String content;

  const ExplicacaoDialog({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      titlePadding: const EdgeInsets.all(14.0),
      title: Row(
        children: [
          Expanded(child: Text(title)),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      contentPadding: const EdgeInsets.all(14.0),
      children: [
        Text(content),
        const SizedBox(height: 12.0),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Imagem indisponível',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
