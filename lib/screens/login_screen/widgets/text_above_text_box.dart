import 'package:flutter/material.dart';

class TextAboveTextBox extends StatelessWidget {
  const TextAboveTextBox({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.blue[900], fontSize: 18),
    );
  }
}
