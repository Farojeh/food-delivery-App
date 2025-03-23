part of 'category_cubit.dart';

@immutable
class CategoryState {
  final bool showcat ;
  final int? activeIndex ;
  final List popArr = [
      {
        "image": "assets/images/res_1.png",
        "name": "Minute by tuk tuk",
        "rate": "4.9",
        "rating": "124",
        "type": "Cafa",
        "food_type": "Western Food"
      },
      {
        "image": "assets/images/res_2.png",
        "name": "Café de Noir",
        "rate": "4.9",
        "rating": "124",
        "type": "Cafa",
        "food_type": "Western Food"
      },
      {
        "image": "assets/images/res_3.png",
        "name": "Bakes by Tella",
        "rate": "4.9",
        "rating": "124",
        "type": "Cafa",
        "food_type": "Western Food"
      },
    ];

  final List catArr = [
    {"image": "assets/images/cat_offer.png", "name": "Offers"},
    {"image": "assets/images/cat_sri.png", "name": "Sri Lankan"},
    {"image": "assets/images/cat_3.png", "name": "Italian"},
    {"image": "assets/images/cat_4.png", "name": "Indian"},
  ];
   CategoryState({this.activeIndex = 1, required this.showcat});
}

