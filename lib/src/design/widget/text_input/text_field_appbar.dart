import 'package:flutter/material.dart';

class TextFieldAppbar extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  const TextFieldAppbar({
    super.key,
    this.hintText,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: const TextStyle(
        fontSize: 14.0,
        fontFamily: 'Metropolis',
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.w600,
        ),
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        border: const UnderlineInputBorder(),
        contentPadding: const EdgeInsets.fromLTRB(0, 0.0, 0, 0.0),
      ),
    );
  }
}
