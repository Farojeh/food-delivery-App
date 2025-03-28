import 'package:advanced_project/Menu_view/widget/grid_view_menu_item.dart';
import 'package:advanced_project/Menu_view/widget/title_result.dart';
import 'package:flutter/material.dart';

class BottomMenuItemView extends StatelessWidget {
  final String count;
  const BottomMenuItemView({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: media.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [TitleResult(count:count),const GridViewMenuItem()],
        ),
      ),
    );
  }
}
