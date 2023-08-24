import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';

class HotelDetiels extends StatelessWidget {
  const HotelDetiels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Shooting Star Motel", //TODO return hotel name
              style:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Spaces.spaceH32,
            const Text(
              "15 Nov - 18 Nov, 5 nights", //TODO return date & number of days
              style: TextStyle(fontSize: 15),
            ),
            Spaces.spaceH4,
            const Text(
              "1 Room, 2 Adults", //TODO return number of rooms, and person
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            "assets/img/hotel.jpg", //Return imge URL from database
            fit: BoxFit.fitHeight,
            width: MediaQuery.of(context).size.width * 0.35,
            height: 170,
          ),
        ),
      ],
    );
  }
}
