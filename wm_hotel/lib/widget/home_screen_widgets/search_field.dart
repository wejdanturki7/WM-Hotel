import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/widget/button_widget.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              buttonTitle: 'Search',
              buttonWidth: 80,
              fontSize: 15,
              padding: 2,
              onPressed: () {},
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100)),
          filled: true,
          fillColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}