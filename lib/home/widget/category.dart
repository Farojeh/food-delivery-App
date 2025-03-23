import 'package:advanced_project/home/cubit/category_cubit.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: state.showcat
                ? SizedBox(
                    height: 110,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: state.catArr.length,
                      itemBuilder: ((context, index) {
                        var cObj = state.catArr[index] as Map? ?? {};
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 75,
                                  width: 85,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      cObj["image"].toString(),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  cObj["name"],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorsMe.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}
