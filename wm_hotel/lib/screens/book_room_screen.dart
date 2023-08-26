import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/book_room_screen_widgets/coupon_field.dart';
import 'package:wm_hotel/widget/book_room_screen_widgets/hotel_details.dart';
import 'package:wm_hotel/widget/book_room_screen_widgets/payment_and_coupon.dart';
import 'package:wm_hotel/widget/button_widget.dart';

class BookingRoomScreen extends StatelessWidget {
  const BookingRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TODO Change appbar to custom one
        title: const Text("Book Room"),
        centerTitle: true,
      ),
      body: Container(
        margin:
            const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 140),
        child: Column(
          children: [
            const HotelDetiels(),
            Spaces.spaceH24,
            Divider(
              color: AppColors.blackColor,
            ),
            Spaces.spaceH32,
            const PriceAndNigths(),
            Spaces.spaceH24,
            const CouponFiled(),
            Spaces.spaceH16,
            Divider(
              color: AppColors.blackColor,
            ),
            Spaces.spaceH16,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "  Total (SR)",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "600SR", //TODO return total price
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(
              buttonTitle: "Book now",
              buttonWidth: MediaQuery.of(context).size.width - 40,
            ),
          ],
        ),
      ),
    );
  }
}
