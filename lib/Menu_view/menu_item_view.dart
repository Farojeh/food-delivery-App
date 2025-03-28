import 'package:advanced_project/Menu_view/controller/menu_item.dart';
import 'package:advanced_project/Menu_view/widget/bottom_menu_item_view.dart';
import 'package:advanced_project/Menu_view/widget/top_menu_item_view.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';

class MenuItemView extends StatelessWidget {
  final MenuItem menuItem;
  const MenuItemView({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
   
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: media.height,
        width: media.width,
        color: ColorsMe.primaryback,
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            TopMenuItemView(title: menuItem.name,),
            BottomMenuItemView(count: menuItem.count,)
             ],
        ),
      ),
    );
  }
}
