import 'package:flutter/material.dart';

class ReviwAndRateRow extends StatelessWidget {
  const ReviwAndRateRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Text(
          " 4.7", //TODO hotel rate
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Text(
          " (131 reviws)", //TODO hotel review
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}


