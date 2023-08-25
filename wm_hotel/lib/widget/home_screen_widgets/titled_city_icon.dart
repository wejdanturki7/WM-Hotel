import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';

class CityIcon extends StatelessWidget {
  const CityIcon({
    super.key,
    required this.imgUrl,
    required this.city,
  });

  final String imgUrl;
  final String city;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: AppColors.whiteColor,
          backgroundImage: NetworkImage(
            imgUrl,
          ),
        ),
        Spaces.spaceH4,
        Text(city),
      ],
    );
  }
}
