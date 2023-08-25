import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/hotel_detiels_screen_widgets/titled_icon_widget.dart';

class FacilitiesRow extends StatelessWidget {
  const FacilitiesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TitledIcon(
          iconData: Icons.pool,
          title: "Infinity Pool",
        ),
        Spaces.spaceW24,
        TitledIcon(
          iconData: CupertinoIcons.sunset,
          title: "Sunset view",
        ),
        Spaces.spaceW24,
        TitledIcon(
          iconData: Icons.fitness_center,
          title: "Gym center",
        ),
        Spaces.spaceW24,
        TitledIcon(
          iconData: Icons.computer,
          title: "Work station",
        ),
      ],
    );
  }
}