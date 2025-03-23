import 'package:advanced_project/home/cubit/category_cubit.dart';
import 'package:advanced_project/home/widget/custom_res_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularResWidget extends StatelessWidget {
  const PopularResWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        var cubit = context.read<CategoryCubit>();
        return CarouselSlider.builder(
            carouselController: cubit.controller,
            itemCount: state.popArr.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = state.popArr[index]["image"];
              return CustomResWidget(
                  urlImage: urlImage,
                  index: index,
                  pObj: state.popArr[index],
                  onTap: () {});
            },
            options: CarouselOptions(
                initialPage: 1,
                height: 275,
                autoPlay: true,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                enlargeCenterPage: true,
                onPageChanged: (index, reason) => cubit.changeindexres(index)));
      },
    );
  }
}
