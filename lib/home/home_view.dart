import 'package:advanced_project/home/cubit/category_cubit.dart';
import 'package:advanced_project/home/widget/category.dart';
import 'package:advanced_project/home/widget/location.dart';
import 'package:advanced_project/home/widget/searh_row.dart';
import 'package:advanced_project/home/widget/top_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(),
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const TopHomeView(),
              const SizedBox(
                height: 15,
              ),
              const Location(),
              const SizedBox(
                height: 15,
              ),
              const SearhRow(),
              const SizedBox(
                height: 30,
              ),
              const Category(),
              Container(
                height: 120,
                color: Colors.amber,
              )
            ],
          ),
        ),
      )),
    );
  }
}
