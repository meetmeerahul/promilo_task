import 'package:flutter/material.dart';

import '../../../utils/sized_box.dart';

class HeadingsTrendings extends StatelessWidget {
  const HeadingsTrendings({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sizedBoxWidth(16),
        Text(
          text,
          style: TextStyle(
            color: Colors.blue[900],
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
