import 'package:flutter/material.dart';
import 'package:wm_hotel/models/hotel_model.dart';
import 'package:wm_hotel/models/reservation_model.dart';
import 'package:wm_hotel/services/supabase.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/appbar_widget.dart';
import 'package:wm_hotel/widget/book_room_screen_widgets/coupon_field.dart';
import 'package:wm_hotel/widget/book_room_screen_widgets/hotel_details.dart';
import 'package:wm_hotel/widget/book_room_screen_widgets/payment_and_coupon.dart';
import 'package:wm_hotel/widget/button_widget.dart';

class BookingRoomScreen extends StatelessWidget {
  const BookingRoomScreen({super.key, required this.hotels});
  final Hotel hotels;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const WAppBar(
            title: 'Book Room',
            arrowBack: true,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
              child: Column(
                children: [
                  Spaces.spaceH40,
                  HotelDetiels(
                    hotels: hotels,
                  ),
                  Spaces.spaceH24,
                  Divider(
                    color: AppColors.blackColor,
                  ),


                  Spaces.spaceH32,
                  PriceAndNigths(
                    hotels: hotels,
                  ),
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
                    onPressed: () {   SupabaseService().insertReservation(new Reservation(
                  hotelId: hotels.id,
                ));},
                  ),
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
