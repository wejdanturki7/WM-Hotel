import 'package:flutter/material.dart';
import 'package:wm_hotel/models/hotel_model.dart';
import 'package:wm_hotel/screens/book_room_screen.dart';
import 'package:wm_hotel/utilities/extension/navigator.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/button_widget.dart';

class ConfirmBookingSection extends StatelessWidget {
  const ConfirmBookingSection({
    super.key,
    required this.hotels,
  });

  final Hotel hotels;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(255, 205, 205, 205), //New
              blurRadius: 25.0,
              offset: Offset(0, -5))
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Start from"),
              Spaces.spaceH4,
              Row(
                children: [
                  Text(
                    "${hotels.price} SR",
                    style: const TextStyle(

                        fontWeight: FontWeight.w600, fontSize: 10),

                  ),
                  const Text(
                    "/night",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
          CustomButton(
            buttonTitle: "Book Room",
            buttonWidth: MediaQuery.of(context).size.width * 0.59,
            padding: 10,
            fontSize: 17,
            onPressed: () {
              context.push(
                  screen: BookingRoomScreen(
                hotels: hotels,
              ));
            },
          ),
        ],
      ),
    );
  }
}
