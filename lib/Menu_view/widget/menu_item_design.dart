import 'package:flutter/material.dart';

class MenuItemDesign extends StatelessWidget {
  const MenuItemDesign({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size ;
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
      width: media.width - 100,
      height: 96,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          border: Border.all(width: 0.2, color: Colors.black38),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 7, offset: Offset(0, 4))
          ]),
    );
  }
}
