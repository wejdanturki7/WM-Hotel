import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';

class CustomField extends StatelessWidget {
  CustomField(
      {super.key,
      required this.fieldTitel,
      required this.hintText,
      required this.controller, required this.scureText, this.icon = null});

  final TextEditingController controller;
  final String fieldTitel;
  final String hintText;
  final bool scureText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitel,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.greyColor),
        ),
        Spaces.spaceH8,
        SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          height: 45,
          child: TextField(
            controller: controller,
            obscureText: scureText,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              hintText: hintText, 
              prefix:  Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(icon),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
