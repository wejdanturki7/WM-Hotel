import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';

class TitleAndLinkRow extends StatelessWidget {
  const TitleAndLinkRow({
    super.key,
    required this.title,
    required this.linkTitle,
  });
  final String title;
  final String linkTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          linkTitle,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 16,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
