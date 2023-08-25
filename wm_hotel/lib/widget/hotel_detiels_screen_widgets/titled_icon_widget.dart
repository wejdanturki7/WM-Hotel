import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitledIcon extends StatelessWidget {
  TitledIcon({
    super.key,
    required this.title,
    required this.iconData,
  });
  String title;
  IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
        ),
        Text(
          title,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.grey.shade600,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
