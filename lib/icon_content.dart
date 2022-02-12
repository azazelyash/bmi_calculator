import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8d8e98),
);

class CardContent extends StatelessWidget {
  CardContent({this.genderIcon, this.label});

  final IconData? genderIcon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: labelTextStyle,
        ),
      ],
    );
  }
}