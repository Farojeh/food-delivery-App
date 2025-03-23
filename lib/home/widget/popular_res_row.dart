import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class PopularRestaurantRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback onTap;
  const PopularRestaurantRow(
      {super.key, required this.pObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pObj["name"],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorsMe.textbox,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                    pObj["rate"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorsMe.primary,
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "(${pObj["rating"]} Ratings)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorsMe.textbox,
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    pObj["type"],
                    textAlign: TextAlign.center,
                    style: style(11),
                  ),
                  Text(
                    " . ",
                    textAlign: TextAlign.center,
                    style: style(15),
                  ),
                  Text(
                    pObj["food_type"],
                    textAlign: TextAlign.center,
                    style: style(12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle style(double size) {
    return TextStyle(
        color: ColorsMe.textbox, fontSize: size, fontWeight: FontWeight.w500);
  }
}
