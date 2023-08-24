import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.primaryColor,
                AppColors.secondaryColor,
              ],
            ),
            borderRadius: BorderRadius.circular(25.0)),
        child: const Text(
          'Button name',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
