import 'package:advanced_project/home/widget/popular_res_row.dart';
import 'package:flutter/material.dart';

class CustomResWidget extends StatelessWidget {
  final String urlImage;
  final int index;
  final Map<dynamic, dynamic> pObj;
  final void Function() onTap;
  const CustomResWidget(
      {super.key,
      required this.urlImage,
      required this.index,
      required this.pObj,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 0.5, color: Colors.black26)),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(urlImage, height: 275, fit: BoxFit.cover)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration:const BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                height: 80,
                child: PopularRestaurantRow(pObj: pObj, onTap: onTap),
              ),
            )
          ],
        ));
  }
}
