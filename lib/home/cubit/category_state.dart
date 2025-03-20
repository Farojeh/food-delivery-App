part of 'category_cubit.dart';

@immutable
class CategoryState {
  final bool showcat ;
  final List catArr = [
    {"image": "assets/images/cat_offer.png", "name": "Offers"},
    {"image": "assets/images/cat_sri.png", "name": "Sri Lankan"},
    {"image": "assets/images/cat_3.png", "name": "Italian"},
    {"image": "assets/images/cat_4.png", "name": "Indian"},
  ];
  CategoryState({required this.showcat});
}

