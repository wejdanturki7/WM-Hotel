import 'package:flutter/material.dart';
import 'package:wm_hotel/screens/search_hotel_screen.dart';
import 'package:wm_hotel/utilities/extension/navigator.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/widget/button_widget.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        controller: nameController,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              buttonTitle: 'Search',
              buttonWidth: 80,
              fontSize: 15,
              padding: 2,
              onPressed: () {
                context.push(
                    screen: SearchHotelScreen(
                  qurey: nameController.text,
                ));
              },
            ),
          ),
          prefixIcon: const Icon(Icons.map_outlined),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          filled: true,
          fillColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}
