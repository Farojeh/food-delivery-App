import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Delivering to",
          style: TextStyle(color: ColorsMe.sectext, fontSize: 11),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Current Location",
              style: TextStyle(
                  color: ColorsMe.sectext,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 25,
            ),
            Image.asset(
              "assets/images/dropdown.png",
              width: 12,
              height: 12,
            )
          ],
        )
      ],
    );
  }
}
