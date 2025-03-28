import 'package:advanced_project/Menu_view/controller/menu_item.dart';
import 'package:advanced_project/Menu_view/cubit/menu_cubit.dart';
import 'package:advanced_project/Menu_view/widget/menu_item_design.dart';
import 'package:advanced_project/Menu_view/widget/menu_item_row.dart';
import 'package:advanced_project/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MenuItemList extends StatelessWidget {
  const MenuItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuCubit, MenuState>(
      builder: (context, state) {
        if (state is MenuInitial) {
          return ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.menuArr.length,
              itemBuilder: ((context, index) {
                MenuItem mObj = state.menuArr[index];
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.menuitemview , extra: mObj);
                  },
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      const MenuItemDesign(),
                      MenuItemRow(
                        mObj: mObj,
                      )
                    ],
                  ),
                );
              }));
        } else {
          return Container();
        }
      },
    );
  }
}
