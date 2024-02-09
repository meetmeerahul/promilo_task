import 'package:flutter/material.dart';
import 'package:promilo_task/screens/home_screen/widgets/horizontal_images.dart';
import 'package:promilo_task/utils/sized_box.dart';

import 'widgets/headings_trending.dart';
import 'widgets/horozontal_scroll_card.dart';
import 'widgets/image_carousel.dart';
import 'widgets/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Individual Meetup",
          style:
              TextStyle(color: Colors.blue[900], fontWeight: FontWeight.w500),
        ),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopSearchBox(),
            const ImageCarouselWithDots(),
            const HeadingsTrendings(text: "Trending Popular People"),
            const HorizontalCardList(),
            const HeadingsTrendings(text: "Top Trending Meetups"),
            const HorizontalImageList(),
            sizedBoxHeight(20),
          ],
        ),
      ),
    );
  }
}
