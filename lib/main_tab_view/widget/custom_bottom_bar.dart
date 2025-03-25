import 'package:advanced_project/main_tab_view/cubit/tab_cubit_cubit.dart';
import 'package:advanced_project/main_tab_view/widget/tab_button.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabCubitCubit, TabCubitState>(
      builder: (context, state) {
        var cubit = context.read<TabCubitCubit>();
        return Container(
          color: Colors.white,
          child: BottomAppBar(
            color: const Color.fromARGB(255, 234, 233, 233),
            surfaceTintColor: ColorsMe.white,
            shadowColor: Colors.black,
            elevation: 1,
            notchMargin: 12,
            height: 64,
            shape: const CircularNotchedRectangle(),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TabButton(
                      title: "Menu",
                      icon: "assets/images/tab_menu.png",
                      onTap: () {
                        cubit.changeTab(0);
                      },
                      isSelected: state.selectedIndex == 0),
                  TabButton(
                      title: "Offer",
                      icon: "assets/images/tab_offer.png",
                      onTap: () {
                        cubit.changeTab(1);
                      },
                      isSelected: state.selectedIndex == 1),
                  const SizedBox(
                    width: 40,
                    height: 40,
                  ),
                  TabButton(
                      title: "Profile",
                      icon: "assets/images/tab_profile.png",
                      onTap: () {
                        cubit.changeTab(3);
                      },
                      isSelected: state.selectedIndex == 3),
                  TabButton(
                      title: "More",
                      icon: "assets/images/tab_more.png",
                      onTap: () {
                        cubit.changeTab(4);
                      },
                      isSelected: state.selectedIndex == 4),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
