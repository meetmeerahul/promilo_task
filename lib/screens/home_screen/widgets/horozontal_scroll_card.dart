import 'package:flutter/material.dart';
import 'package:promilo_task/screens/home_screen/widgets/elevatod_button.dart';

import 'meetup_circles.dart';

class HorizontalCardList extends StatelessWidget {
  const HorizontalCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                    color: Color.fromARGB(255, 117, 116, 116), width: 1),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: SizedBox(
                width: 300,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue[900],
                              backgroundImage:
                                  const AssetImage("assets/logomic.png"),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Author",
                                  style: TextStyle(
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "1028 Meetups",
                                  style: TextStyle(
                                    color: Colors.grey.withOpacity(.8),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 270,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      const MeetupCircles(),
                      const ElevatorButtonClass(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
