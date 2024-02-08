import 'package:flutter/material.dart';

class BlueTextBelowSocialMedia extends StatelessWidget {
  const BlueTextBelowSocialMedia({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
    );
  }
}
