import 'package:flutter/material.dart';
import 'package:wm_hotel/models/city_model.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';

class CityIcon extends StatelessWidget {
  const CityIcon({
    super.key,
    required this.cities,
  });

  final City cities;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: AppColors.lightBlue,
            backgroundImage: NetworkImage(
              cities.imgUrl!,
            ),
          ),
          Spaces.spaceH4,
          Text(cities.name!),
        ],
      ),
    );
  }
}
