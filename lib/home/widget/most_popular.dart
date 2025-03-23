import 'package:advanced_project/home/cubit/category_cubit.dart';
import 'package:advanced_project/home/widget/most_popular_call.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20),
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.mostPopArr.length,
              itemBuilder: ((context, index) {
                var mObj = state.mostPopArr[index] as Map? ?? {};
                return MostPopularCell(
                  mObj: mObj,
                  onTap: () {},
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
