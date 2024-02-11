import 'package:flutter/material.dart';
import 'package:promilo_task/utils/sized_box.dart';

class UnderDescriptions extends StatelessWidget {
  const UnderDescriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 30),
          child: Text(
            "Actor Name",
            style: TextStyle(
                fontSize: 20,
                color: Colors.blue[900],
                fontWeight: FontWeight.w500),
          ),
        ),
        sizedBoxHeight(15),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            "Indian Actress",
            style: TextStyle(fontSize: 15, color: Colors.grey.withOpacity(.9)),
          ),
        ),
        sizedBoxHeight(15),
        Row(
          children: [
            sizedBoxWidth(26),
            Icon(
              Icons.access_time_rounded,
              color: Colors.grey.withOpacity(.9),
              size: 16,
            ),
            sizedBoxWidth(5),
            Text(
              "Duration 20 Mins",
              style: TextStyle(
                color: Colors.grey.withOpacity(.9),
              ),
            )
          ],
        ),
        sizedBoxHeight(15),
        Row(
          children: [
            sizedBoxWidth(26),
            Icon(
              Icons.wallet,
              color: Colors.grey.withOpacity(.9),
              size: 16,
            ),
            sizedBoxWidth(5),
            Text(
              "Total Average Fees \$9,999",
              style: TextStyle(
                color: Colors.grey.withOpacity(.9),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 30),
          child: Text(
            "About",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue[900],
            ),
          ),
        ),
        sizedBoxHeight(5),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
            "when an unknown printer took a galley of type and scrambled it to make a type "
            "specimen book. It has survived not only five centuries, but also the leap into "
            "when an unknown printer took a galley of type and scrambled it to make a type "
            "electronic typesetting, remaining essentially unchanged.",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
              color: Colors.grey.withOpacity(.9),
              letterSpacing: 0.5,
              height: 1,
            ),
          ),
        ),
        sizedBoxHeight(10),
        Row(
          children: [
            sizedBoxWidth(300),
            Text(
              "See More",
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.blue[900]),
            ),
          ],
        )
      ],
    );
  }
}
