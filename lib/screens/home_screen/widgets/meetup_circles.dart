import 'package:flutter/material.dart';

class MeetupCircles extends StatelessWidget {
  const MeetupCircles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage("assets/m1.jpg"),
              ),
            ),
            Positioned(
              left: 30,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.green,
                backgroundImage: AssetImage("assets/m5.jpg"),
              ),
            ),
            Positioned(
              left: 60,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("assets/m3.jpg"),
              ),
            ),
            Positioned(
              left: 90,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("assets/m2.jpg"),
              ),
            ),
            Positioned(
              left: 120,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("assets/m5.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
