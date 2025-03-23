import 'package:advanced_project/home/cubit/category_cubit.dart';
import 'package:advanced_project/home/widget/recent_item_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentItem extends StatelessWidget {
  const RecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemCount: state.recentArr.length,
            itemBuilder: ((context, index) {
              var rObj = state.recentArr[index] as Map? ?? {};
              return RecentItemRow(
                rObj: rObj,
                onTap: () {},
              );
            }));
      },
    );
  }
}
