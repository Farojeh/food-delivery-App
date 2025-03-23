import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class ViewAllWidget extends StatelessWidget {
  final String title ;
  final void Function()? onView;
  final double? top ;
  final double? bottom ;
  const ViewAllWidget({super.key, required this.title, this.onView, this.top, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: top??0 , bottom: bottom??0 , right: 20 , left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: ColorsMe.primaryText,
                fontSize: 18,
                fontWeight: FontWeight.w800),
          ),
          TextButton(
            onPressed: onView,
            child: Text(
              "View all",
              style: TextStyle(
                  color: ColorsMe.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}