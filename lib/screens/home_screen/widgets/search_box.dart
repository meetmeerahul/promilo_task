import 'package:flutter/material.dart';

class TopSearchBox extends StatelessWidget {
  const TopSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade900), // Border color
          borderRadius: BorderRadius.circular(8.0), // Border radius
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.blue[900],
              ), // Leading icon
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.mic_none_sharp,
                color: Colors.blue[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
