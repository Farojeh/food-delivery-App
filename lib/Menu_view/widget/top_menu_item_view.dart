import 'package:advanced_project/Menu_view/widget/search_menu_item_view.dart';
import 'package:advanced_project/Menu_view/widget/top_title.dart';
import 'package:flutter/material.dart';

class TopMenuItemView extends StatelessWidget {
  final String title ;
  const TopMenuItemView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 28, left: 10),
      height: media.height * 0.22,
      child:  Column(
        children: [
          TopTitle(title :title),
          const SizedBox(
            height: 20,
          ),
          const SearchMenuItemView()
        ],
      ),
    );
  }
}
