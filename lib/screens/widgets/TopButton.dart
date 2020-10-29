import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  final Icon icon;
  final String text;
  TopButton({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(7)),
            child: icon), 
        SizedBox(
          height: 3,
        ),
        Text(text)
      ],
    );
  }
}