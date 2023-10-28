import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String mytext;
  final event;
  const Mybutton({
    super.key,
    required this.mytext,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: event,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 161, 196, 162),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Text(mytext),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}
