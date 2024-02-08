import 'package:flutter/material.dart';

class TextUnderTextBox extends StatelessWidget {
  const TextUnderTextBox({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.blue[900], fontSize: 20, fontWeight: FontWeight.w500),
    );
  }
}
