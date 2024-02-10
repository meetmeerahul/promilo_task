import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final List<String> images = [
    'assets/d1.jpg', // Replace with your image paths
    'assets/d2.jpg',
    'assets/d3.jpg',
  ];

  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
      child: Container(
        height: 320,
        width: 330,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(20.0), // Rounded corners for the container
          color: Colors
              .white, // Add a background color to see the container's shape
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Stack(
            children: [
              PageView.builder(
                controller: _pageController,
                itemCount: images.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return AspectRatio(
                    aspectRatio:
                        1.0, // Aspect ratio of 1 will make the images square
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          20.0), // Apply rounded corners to images
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 10.0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    images.length,
                    (i) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == i
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
