import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';

class CouponFiled extends StatelessWidget {
  const CouponFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          child: SizedBox(
            width: 230,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'code',
              ),
            ),
          ),
        ),
        Spaces.spaceW24,
        InkWell(
          onTap: () {},
          child: Text(
            "Add coupon",
            style:
                TextStyle(fontSize: 15, color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
