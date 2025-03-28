import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class MenuItemCustomGridview extends StatelessWidget {
  final Map<dynamic, dynamic> obj;
  const MenuItemCustomGridview({super.key, required this.obj});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 7,
            )
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                obj["image"],
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: constraints.maxHeight * 0.38,
              decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      obj["name"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: ColorsMe.textbox,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 3,
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
                          obj["rate"],
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
                          "(${obj["rating"]} Ratings)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorsMe.textbox,
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          obj["type"],
                          textAlign: TextAlign.center,
                          style: style(10),
                        ),
                        Text(
                          " . ",
                          textAlign: TextAlign.center,
                          style: style(11),
                        ),
                        Text(
                          obj["food_type"],
                          textAlign: TextAlign.center,
                          style: style(10),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle style(double size) {
    return TextStyle(
        color: ColorsMe.textbox, fontSize: size, fontWeight: FontWeight.w500);
  }
}
