import 'package:flutter/material.dart';
import 'package:promilo_task/screens/description_screen/widgets/star_rating.dart';
import 'package:promilo_task/utils/sized_box.dart';

class ReactionsWidgets extends StatelessWidget {
  const ReactionsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          sizedBoxWidth(15),
          const Icon(
            Icons.bookmark_border_outlined,
            color: Colors.blue,
          ),
          sizedBoxWidth(3),
          Text(
            "1043",
            style: TextStyle(
              color: Colors.grey.withOpacity(.8),
            ),
          ),
          sizedBoxWidth(8),
          const Icon(
            Icons.favorite_outline,
            color: Colors.blue,
          ),
          sizedBoxWidth(3),
          Text(
            "1043",
            style: TextStyle(
              color: Colors.grey.withOpacity(.8),
            ),
          ),
          sizedBoxWidth(8),
          const StarRating(),
          sizedBoxWidth(3),
          Text(
            "3.2",
            style: TextStyle(
              color: Colors.blue.withOpacity(.8),
            ),
          ),
        ],
      ),
    );
  }
}
