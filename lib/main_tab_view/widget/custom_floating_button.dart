import 'package:advanced_project/main_tab_view/cubit/tab_cubit_cubit.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabCubitCubit, TabCubitState>(
      builder: (context, state) {
        var cubit = context.read<TabCubitCubit>();
        return SizedBox(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            onPressed: () {
              cubit.changeTab(2);
            },
            shape: const CircleBorder(),
            backgroundColor: state.selectedIndex == 2
                ? ColorsMe.primary
                : ColorsMe.primaryhieght,
            child: Image.asset(
              "assets/images/tab_home.png",
              height: 30,
              width: 30,
            ),
          ),
        );
      },
    );
  }
}
