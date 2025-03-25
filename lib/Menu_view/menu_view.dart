import 'package:advanced_project/Menu_view/cubit/menu_cubit.dart';
import 'package:advanced_project/Menu_view/widget/back_ground_menu_view.dart';
import 'package:advanced_project/Menu_view/widget/menu_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuCubit(),
      child: const Scaffold(body: BackGroundMenuView(restbody: MenuViewBody())),
    );
  }
}
