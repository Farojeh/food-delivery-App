import 'package:advanced_project/Menu_view/menu_view.dart';
import 'package:advanced_project/More_view/more_view.dart';
import 'package:advanced_project/home/home_view.dart';
import 'package:advanced_project/offer_view/offer_view.dart';
import 'package:advanced_project/profile_view/profile_view.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'tab_cubit_state.dart';

class TabCubitCubit extends Cubit<TabCubitState> {
  TabCubitCubit() : super(const TabCubitState(selectedIndex: 2, selectedPage: HomeView()));

  void changeTab(int index) {
    Widget newPage;
    switch (index) {
      case 0:
        newPage = const MenuView();
        break;
      case 1:
        newPage = const OfferView();
        break;
      case 2:
        newPage = const HomeView();
        break;
      case 3:
        newPage = const ProfileView();
        break;
      case 4:
        newPage = const MoreView();
        break;
      default:
        newPage = const HomeView();
    }
    emit(TabCubitState
    (selectedIndex: index, selectedPage: newPage));
  }

}
