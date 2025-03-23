import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class MostPopularCell extends StatelessWidget {
  final Map mObj;
  final VoidCallback onTap;
  const MostPopularCell({super.key, required this.mObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                mObj["image"].toString(),
                width: 220,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              mObj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorsMe.primaryText,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  mObj["type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: ColorsMe.sectext, fontSize: 11),
                ),
                Text(
                  " . ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: ColorsMe.primary, fontSize: 11),
                ),
                Text(
                  mObj["food_type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: ColorsMe.sectext, fontSize: 11),
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/images/rate.png",
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  mObj["rate"],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: ColorsMe.primary, fontSize: 11),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
