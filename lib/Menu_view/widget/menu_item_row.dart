import 'package:advanced_project/Menu_view/controller/menu_item.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class MenuItemRow extends StatelessWidget {
  final MenuItem mObj;
  const MenuItemRow({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          mObj.image.toString(),
          width: 86,
          height: 86,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mObj.name.toString(),
                style: TextStyle(
                    color: ColorsMe.primaryText,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "${mObj.count.toString()} items",
                style: TextStyle(color: ColorsMe.sectext, fontSize: 11),
              ),
            ],
          ),
        ),
        Container(
          width: 40,
          height: 37,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17.5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
              ]),
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/btn_next.png",
            width: 17,
            height: 17,
          ),
        ),
      ],
    );
  }
}
