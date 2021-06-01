import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final String number;

  Header(this.number, this.title);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.grid_view_sharp,
          color: Colors.grey,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              style: TextStyle(fontSize: 20),
            )),
        Container(
            decoration: BoxDecoration(
                color: Colors.grey[1000],
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.only(left: 5),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Text('You have $number cards'),
            )),
      ],
    );
  }
}
