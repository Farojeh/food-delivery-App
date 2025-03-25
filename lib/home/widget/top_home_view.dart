import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class TopHomeView extends StatelessWidget {
  final String title;
  const TopHomeView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: ColorsMe.primaryText,
                fontSize: 20,
                fontWeight: FontWeight.w800),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/shopping_cart.png",
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
