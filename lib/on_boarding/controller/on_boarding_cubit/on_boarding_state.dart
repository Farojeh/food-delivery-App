part of 'on_boarding_cubit.dart';

@immutable
class OnBoardingState {
  final int selectPage;
  final double percent;
  final List pageArray = [
    {
      "title": "Find Food You Love",
      "subtitle":
          "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
      "image": "assets/images/on_boarding_1.png",
    },
    {
      "title": "Fast Delivery",
      "subtitle": "Fast food delivery to your home, office\n wherever you are",
      "image": "assets/images/on_boarding_2.png",
    },
    {
      "title": "Live Tracking",
      "subtitle":
          "Real time tracking of your food on the app\nonce you placed the order",
      "image": "assets/images/on_boarding_3.png",
    },
  ];


   OnBoardingState({this.selectPage = 0, this.percent = 1 / 3});

  OnBoardingState copyWith({int? selectPage, double? percent}) {
    return OnBoardingState(
      selectPage: selectPage ?? this.selectPage,
      percent: percent ?? this.percent,
    );
  }
}
