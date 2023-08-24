import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  //TODO return values from database

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      decoration: const BoxDecoration(
        // color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.5,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              "assets/img/hotel.jpg", //Return imge URL from database
              fit: BoxFit.fitHeight,
              width: 200,
              height: 200,
            ),
          ),
          Spaces.spaceH8,
          const Text(
            "Shooting Star Motel", //Return hotel name
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          Spaces.spaceH4,
          const Text(
            "St.Park 36, New York", //Return hotel city & location
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
          ),
          Spaces.spaceH8,
          const Row(
            children: [
              Text(
                "\$120", //return price
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              Text(
                "/night",
                style: TextStyle(fontSize: 15),
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                "4.0", //Return reating
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
