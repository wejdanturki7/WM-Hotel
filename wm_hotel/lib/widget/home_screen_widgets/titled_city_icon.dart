import 'package:flutter/material.dart';
import 'package:wm_hotel/models/city_model.dart';
import 'package:wm_hotel/screens/hotel_city_screen.dart';
import 'package:wm_hotel/utilities/extension/navigator.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';

class CityIcon extends StatefulWidget {
  const CityIcon({
    super.key,
    required this.cities,
  });

  final City cities;

  @override
  State<CityIcon> createState() => _CityIconState();
}

class _CityIconState extends State<CityIcon> {
  @override
  Widget build(BuildContext context) {
    String city = widget.cities.name.toString();
    return InkWell(
      onTap: () {
        context.push(screen: HotelCityScreen(cityName: city));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: AppColors.lightBlue,
              backgroundImage: NetworkImage(
                widget.cities.imgUrl!,
              ),
            ),
            Spaces.spaceH4,
            Text(widget.cities.name!),
          ],
        ),
      ),
    );
  }
}
