import 'package:advanced_project/Menu_view/widget/menu_item_list.dart';
import 'package:advanced_project/home/widget/top_home_view.dart';
import 'package:flutter/material.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          height: media.height,
          width: media.width,
          child:const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               SizedBox(
                height: 40,
              ),
               TopHomeView(
                title: "Menu View ",
              ),
               SizedBox(
                height: 45,
              ),
              MenuItemList()
               ],
          ),
        ),
      );
  }
}