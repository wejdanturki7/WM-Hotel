import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wm_hotel/models/hotel_model.dart';
import 'package:wm_hotel/utilities/extension/navigator.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/hotel_detiels_screen_widgets/confirm_booking_widget.dart';
import 'package:wm_hotel/widget/hotel_detiels_screen_widgets/customer_name_and_rate_row.dart';
import 'package:wm_hotel/widget/hotel_detiels_screen_widgets/facilities_row.dart';
import 'package:wm_hotel/widget/hotel_detiels_screen_widgets/reviw_rates_row.dart';

class HoteleDetilesScreen extends StatelessWidget {
  const HoteleDetilesScreen({super.key, required this.hotels});

  final Hotel hotels;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.network(
              hotels.imgUrl!,
              height: 300,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            top: 50,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
              color: AppColors.whiteColor,
              onPressed: () {
                context.pop();
              },
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            hotels.name!,
                            maxLines: 2,
                            style: const TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Icon(CupertinoIcons.heart),
                      ],
                    ),
                    Spaces.spaceH8,
                    Text(
                      hotels.city.toString(), //TODO hotel city
                      style: TextStyle(fontSize: 15),
                    ),
                    Spaces.spaceH8,
                    const ReviwAndRateRow(),
                    Spaces.spaceH24,
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Spaces.spaceH8,
                    Text(
                      hotels.description!,
                      style: const TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Spaces.spaceH32,
                    const Text(
                      "Facilities",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
