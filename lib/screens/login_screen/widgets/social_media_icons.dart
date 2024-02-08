import 'package:flutter/material.dart';

import '../../../utils/sized_box.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          children: [
            sizedBoxWidth(40),
            Image.asset(
              "assets/1.png",
              height: 50,
              width: 50,
            ),
            sizedBoxWidth(10),
            Image.asset(
              "assets/2.png",
              height: 50,
              width: 50,
            ),
            sizedBoxWidth(10),
            Image.asset(
              "assets/3.png",
              height: 50,
              width: 50,
            ),
            sizedBoxWidth(10),
            Image.asset(
              "assets/4.png",
              height: 50,
              width: 50,
            ),
            sizedBoxWidth(10),
            Image.asset(
              "assets/5.png",
              height: 50,
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
