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
        height: context.getHeight() / 8,
        width: context.getWidth(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Spaces.spaceH32,
            Spaces.spaceH32,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
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
                      : SizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Column(
                      children: [
                        Text(title,
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
