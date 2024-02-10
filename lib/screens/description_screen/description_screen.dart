import 'package:flutter/material.dart';

import 'widgets/bottom_buttons.dart';
import 'widgets/top_image_slider.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Description",
          style: TextStyle(color: Colors.blue[900]),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue[900],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 600, // Adjust the height of the SizedBox
              child: Column(
                children: [
                  ImageCarousel(),
                  BottomButtons(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
