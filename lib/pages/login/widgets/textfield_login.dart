import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({
    Key? key,
    required this.hint,
    required this.ctrl,
  }) : super(key: key);
  final String hint;
  final TextEditingController ctrl;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: ctrl,
      decoration: InputDecoration(
        hintMaxLines: 1,
        hintText: hint,
      ),
      maxLines: 1,
    );
  }
}
