import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldPassOutline extends StatefulWidget {
  final int? maxLenght;
  final String? hintText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  const TextFieldPassOutline({
    super.key,
    this.maxLenght,
    this.hintText,
    this.prefixIcon,
    this.keyboardType,
    this.onChanged,
  });

  @override
  State<TextFieldPassOutline> createState() => _TextFieldPassOutlineState();
}

class _TextFieldPassOutlineState extends State<TextFieldPassOutline> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    final inputFormatters = <TextInputFormatter>[];
    if (widget.maxLenght != null) {
      inputFormatters.add(LengthLimitingTextInputFormatter(widget.maxLenght!));
    }

    return TextField(
      onChanged: widget.onChanged,
      keyboardType: widget.keyboardType,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      style: const TextStyle(fontFamily: 'Metropolis'),
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
        hintStyle: const TextStyle(fontFamily: 'Metropolis'),
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: InkWell(
          child: obscureText
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
          onTap: () {
            setState(() => obscureText = !obscureText);
          },
        ),
      ),
    );
  }
}
