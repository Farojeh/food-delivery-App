import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class TitleResult extends StatelessWidget {
  final String count ;
  const TitleResult({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 30),
      child: Text(
        " - $count Results",
        style: TextStyle(
            fontSize: 18,
            color: ColorsMe.primaryText,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
