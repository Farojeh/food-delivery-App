import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class BackGroundMenuView extends StatelessWidget {
  final Widget restbody;
  const BackGroundMenuView({super.key, required this.restbody});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
        color: ColorsMe.white,
        height: media.height,
        width: media.width,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: media.width * 0.27,
            height: media.height * 0.6,
            decoration: BoxDecoration(
              color: ColorsMe.primaryback,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
            ),
          ),
          restbody
        ]));
  }
}
