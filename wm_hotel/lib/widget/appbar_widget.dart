import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/extension/navigator.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/utilities/extension/screen.dart';

class WAppBar extends StatelessWidget {
  const WAppBar({
    super.key,
    required this.title,
    this.arrowBack = false,
  });

  final String title;
  final bool arrowBack;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Container(
        height: context.getHeight() / 7,
        width: context.getWidth(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
          ),
        ),
        child: Column(
          children: [
            Spaces.spaceH32,
            Spaces.spaceH32,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                arrowBack
                    ? IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.whiteColor,
                        ))
                    : const SizedBox(),
                Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor),
                    ),
                  ],
                ),
                arrowBack ? Spaces.spaceW24 : const SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
