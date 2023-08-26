import 'package:flutter/material.dart';
import 'package:wm_hotel/models/hotel_model.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.hotels,
    this.onTap,
  });

  final Hotel hotels;
  final Function? onTap;

  //TODO return values from database

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
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
              child: Image.network(
                hotels.imgUrl!, //Return imge URL from database
                fit: BoxFit.fitHeight,
                width: 200,
                height: 200,
              ),
            ),
            Spaces.spaceH8,
            Text(
              hotels.name!, //Return hotel name
              maxLines: 2,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Spaces.spaceH4,
            Text(
              hotels
                  .city!, //Return hotel city & location related to city table TODO
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
            Spaces.spaceH8,
            Row(
              children: [
                Text(
                  "${hotels.price} SR",
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
      ),
    );
  }
}
