import 'package:flutter/material.dart';
import 'package:promilo_task/screens/description_screen/widgets/reactions.dart';

import 'widgets/bottom_buttons.dart';
import 'widgets/top_image_slider.dart';
import 'widgets/under_descriptions.dart';

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
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue[900],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Colors.grey[300],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const Column(
                children: [
                  ImageCarousel(),
                  BottomButtons(),
                  ReactionsWidgets(),
                  UnderDescriptions()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
