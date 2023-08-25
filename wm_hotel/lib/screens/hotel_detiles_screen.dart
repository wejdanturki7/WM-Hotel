import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/hotel_detiels_screen_widgets/confirm_booking_widget.dart';
import 'package:wm_hotel/widget/hotel_detiels_screen_widgets/customer_name_and_rate_row.dart';
import 'package:wm_hotel/widget/hotel_detiels_screen_widgets/facilities_row.dart';
import 'package:wm_hotel/widget/hotel_detiels_screen_widgets/reviw_rates_row.dart';

class HoteleDetilesScreen extends StatelessWidget {
  const HoteleDetilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              "assets/img/hotel.jpg",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              height: MediaQuery.of(context).size.height * 0.67,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jimbaran beach resort", //TODO hotel name
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      Icon(CupertinoIcons.heart),
                    ],
                  ),
                  Spaces.spaceH8,
                  const Text(
                    "Baduong, Indonesia", //TODO hotel city
                    style: TextStyle(fontSize: 15),
                  ),
                  Spaces.spaceH8,
                  const ReviwAndRateRow(),
                  Spaces.spaceH24,
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Spaces.spaceH8,
                  const Text(
                    'RIMBA by AYANA Bali is a 5-star accommodation with 12 outdoor pools, gym and 19 dining options. Operating a 24-hour.', //TODO return hotel description',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Spaces.spaceH32,
                  const Text(
                    "Facilities", //TODO hotel city
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Spaces.spaceH16,
                  const FacilitiesRow(),
                  Spaces.spaceH32,
                  const Text(
                    "Reveiws",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const CustomerNameAndRate(
                    name: "Adam smith",
                    rate: 4.0,
                  ), // TODO reate from database
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 60),
                    child: Text(
                      "Here will be the customer review about the hotel,Here will be the customer review about the hotel", //TODO customer description
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            child: ConfirmBookingSection(),
          )
        ],
      ),
    );
  }
}
