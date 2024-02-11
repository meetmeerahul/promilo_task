import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130, // Adjust the width according to your requirement
      height: 15, // Adjust the height according to your requirement
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.3),
        border: Border.all(color: Colors.grey.withOpacity(.3)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStar(Colors.blue),
          _buildStar(Colors.blue),
          _buildStar(Colors.blue),
          _buildStar(Colors.blue.withOpacity(0.5)),
          Icon(
            Icons.star_border,
            color: Colors.grey.withOpacity(.2),
            size: 13,
          ), 
      
        ],
      ),
    );
  }

  Widget _buildStar(Color color) {
    return SizedBox(
      width: 20, // Adjust the width of the star icon
      height: 17, // Adjust the height of the star icon
      child: Icon(
        Icons.star,
        color: color,
        size: 13,
      ),
    );
  }
}
