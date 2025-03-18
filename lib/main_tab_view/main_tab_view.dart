import 'package:advanced_project/main_tab_view/cubit/tab_cubit_cubit.dart';
import 'package:advanced_project/main_tab_view/widget/custom_bottom_bar.dart';
import 'package:advanced_project/main_tab_view/widget/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainTabView extends StatelessWidget {
  const MainTabView({super.key});

  @override
  Widget build(BuildContext context) {
    PageStorageBucket storageBucket = PageStorageBucket();
    return BlocProvider(
      create: (context) => TabCubitCubit(),
      child: BlocBuilder<TabCubitCubit, TabCubitState>(
        builder: (context, state) {
          return Scaffold(
            body: PageStorage(bucket: storageBucket, child: state.selectedPage),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton:const CustomFloatingButton(),
            bottomNavigationBar:const CustomBottomBar()
          );
        },
      ),
    );
  }
}
