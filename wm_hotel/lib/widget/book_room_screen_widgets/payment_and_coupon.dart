import 'package:flutter/material.dart';
import 'package:wm_hotel/models/hotel_model.dart';

class PriceAndNigths extends StatelessWidget {
  const PriceAndNigths({
    super.key,
    required this.hotels,
  });
  final Hotel hotels;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${hotels.price} SR ",
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
