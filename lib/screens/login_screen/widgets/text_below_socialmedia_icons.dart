import 'package:flutter/material.dart';

class TextsBelowSocialMediaIcons extends StatelessWidget {
  const TextsBelowSocialMediaIcons({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.grey.withOpacity(.8)),
    );
  }
}
