import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldOutline extends StatelessWidget {
  final int? maxLenght;
  final String? hintText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  const TextFieldOutline({
    super.key,
    this.maxLenght,
    this.hintText,
    this.prefixIcon,
    this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final inputFormatters = <TextInputFormatter>[];
    if (maxLenght != null) {
      inputFormatters.add(LengthLimitingTextInputFormatter(maxLenght!));
    }

    return TextField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      style: const TextStyle(fontFamily: 'Metropolis'),
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
        hintStyle: const TextStyle(fontFamily: 'Metropolis'),
        hintText: hintText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
