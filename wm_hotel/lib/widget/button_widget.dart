import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonTitle,
    required this.buttonWidth,
    this.padding = 13,
    this.fontSize = 20,
    this.onPressed,
  });

  final String buttonTitle;
  final double buttonWidth;
  final double? padding;
  final double? fontSize;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed!,
      child: Container(
        width: buttonWidth,
        padding: EdgeInsets.all(padding!),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.primaryColor,
                AppColors.secondaryColor,
              ],
            ),
            borderRadius: BorderRadius.circular(25.0)),
        child: Text(
          buttonTitle,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: fontSize!),
        ),
      ),
    );
  }
}
