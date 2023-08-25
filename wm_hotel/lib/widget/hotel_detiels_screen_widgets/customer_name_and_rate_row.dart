import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';

class CustomerNameAndRate extends StatelessWidget {
  const CustomerNameAndRate({
    super.key, required this.name, required this.rate,
  });

  final String name ;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spaces.spaceH32,
        Text(
          name, //TODO customer name
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spaces.spaceW8,
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 17,
        ),
        Text("$rate"), //TODO Customer rate
      ],
    );
  }
}
