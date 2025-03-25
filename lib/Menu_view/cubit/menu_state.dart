part of 'menu_cubit.dart';

@immutable
sealed class MenuState {}

final class MenuInitial extends MenuState {
  final List menuArr = [
    MenuItem(name: "Food", image: "assets/images/menu_1.png", count: "120"),
    MenuItem(name: "Beverages", image: "assets/images/menu_2.png", count: "220"),
    MenuItem(name: "Desserts", image: "assets/images/menu_3.png", count: "155"),
    MenuItem(name: "Promotions", image: "assets/images/menu_4.png", count: "25"),
  ];

}
