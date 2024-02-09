import 'package:flutter/material.dart';

class HorizontalImageList extends StatelessWidget {
  const HorizontalImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200.0, // Height of the scrollable area
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Number of images
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/t${index + 1}.jpg",
                      width: 150,
                      fit: BoxFit
                          .fill, // Fill the container maintaining aspect ratio
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                right: 12.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    height: 80,
                    width: 80,
                    padding: const EdgeInsets.all(5.0),
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        '0${index + 1}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 70.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
