import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  final String name;
  final String prices;
  final String imagePath;
  final String rating;
  final void Function()? details;

  const EventTile(
      {super.key,
      required this.name,
      required this.imagePath,
      required this.prices,
      required this.rating,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(8),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(onTap: details, child: Image.asset(imagePath)),
        Text(name),
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Text(prices),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(rating),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.yellow,
              ),
            ],
          )
        ])
      ]),
    );
  }
}
