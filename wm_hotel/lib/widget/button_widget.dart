import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonTitle,
  });

  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        padding: const EdgeInsets.all(13),
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
          style: const TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
