import 'package:advanced_project/Menu_view/widget/menu_item_custom_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewMenuItem extends StatelessWidget {
  const GridViewMenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    List menuItemsArr = [
      {
        "image": "assets/images/dess_1.png",
        "name": "French Apple Pie",
        "rate": "4.9",
        "rating": "124",
        "type": "Minute by tuk tuk",
        "food_type": "Desserts"
      },
      {
        "image": "assets/images/dess_2.png",
        "name": "Dark Chocolate Cake",
        "rate": "4.9",
        "rating": "124",
        "type": "Cakes by Tella",
        "food_type": "Desserts"
      },
      {
        "image": "assets/images/dess_3.png",
        "name": "Street Shake",
        "rate": "4.9",
        "rating": "124",
        "type": "Café Racer",
        "food_type": "Desserts"
      },
      {
        "image": "assets/images/dess_4.png",
        "name": "Fudgy Chewy Brownies",
        "rate": "4.9",
        "rating": "124",
        "type": "Minute by tuk tuk",
        "food_type": "Desserts"
      },
      {
        "image": "assets/images/dess_1.png",
        "name": "French Apple Pie",
        "rate": "4.9",
        "rating": "124",
        "type": "Minute by tuk tuk",
        "food_type": "Desserts"
      },
      {
        "image": "assets/images/dess_2.png",
        "name": "Dark Chocolate Cake",
        "rate": "4.9",
        "rating": "124",
        "type": "Cakes by Tella",
        "food_type": "Desserts"
      },
      {
        "image": "assets/images/dess_3.png",
        "name": "Street Shake",
        "rate": "4.9",
        "rating": "124",
        "type": "Café Racer",
        "food_type": "Desserts"
      },
      {
        "image": "assets/images/dess_4.png",
        "name": "Fudgy Chewy Brownies",
        "rate": "4.9",
        "rating": "124",
        "type": "Minute by tuk tuk",
        "food_type": "Desserts"
      },
    ];

    return Expanded(
      child: LayoutBuilder(
          builder: (context, constraints) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: GridView.custom(
                  // physics: const NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  gridDelegate: SliverWovenGridDelegate.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 0,
                    pattern: [
                      const WovenGridTile(0.95),
                      const WovenGridTile(
                        0.75,
                        crossAxisRatio: 0.88,
                        alignment: AlignmentDirectional.centerEnd,
                      ),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                      childCount: menuItemsArr.length,
                      (context, index) =>
                          MenuItemCustomGridview(obj: menuItemsArr[index]))))),
    );
  }
}
