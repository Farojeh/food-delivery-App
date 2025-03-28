import 'package:advanced_project/home/cubit/category_cubit.dart';
import 'package:advanced_project/home/widget/category.dart';
import 'package:advanced_project/home/widget/location.dart';
import 'package:advanced_project/home/widget/most_popular.dart';
import 'package:advanced_project/home/widget/popular_res_widget.dart';
import 'package:advanced_project/home/widget/recent_item.dart';
import 'package:advanced_project/home/widget/searh_row.dart';
import 'package:advanced_project/home/widget/top_home_view.dart';
import 'package:advanced_project/home/widget/view_all_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const TopHomeView(title: "Good morning Akila",),
              const SizedBox(
                height: 15,
              ),
              const Location(),
              const SizedBox(
                height: 15,
              ),
              const SearhRow(),
              const SizedBox(
                height: 25,
              ),
              const Category(),
              ViewAllWidget(
                top: 7,
                bottom: 7,
                title: "Popular Restaurants",
                onView: () {},
              ),
              const PopularResWidget(),
              const SizedBox(
                height: 5,
              ),
              ViewAllWidget(
                top: 7,
                bottom: 7,
                title: "Most Popular",
                onView: () {},
              ),
              const MostPopular(),
              ViewAllWidget(
                title: "Recent Items",
                onView: () {},
              ),
              const RecentItem(),
            ],
          ),
        ),
      )),
    );
  }
}
