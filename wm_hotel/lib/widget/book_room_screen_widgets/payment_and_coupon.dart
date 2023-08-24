import 'package:flutter/material.dart';

class  PriceAndNigths extends StatelessWidget {
  const PriceAndNigths({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "\$120", //TODO return price of 1 night
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
        Text(
          "x 5 nights", //TODO return number of nights night
          style: TextStyle(fontSize: 17),
        ),
        Spacer(),
        Text(
          "\$600", //TODO return total price
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
      ],
    );
  }
}
