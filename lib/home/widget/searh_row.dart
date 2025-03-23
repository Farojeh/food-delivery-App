import 'package:advanced_project/home/cubit/category_cubit.dart';
import 'package:advanced_project/home/widget/search_part.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SearhRow extends StatelessWidget {
  const SearhRow({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CategoryCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.76,
              child: const SearchPart()),
          InkWell(
            onTap: () {
              cubit.changeshowcat(!cubit.returnshowcat());
            },
            overlayColor: WidgetStatePropertyAll(Colors.white.withOpacity(0)),
            child: Container(
              padding: const EdgeInsets.all(13),
              height: 55,
              width: MediaQuery.of(context).size.width * 0.13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorsMe.primary),
              child: SvgPicture.asset(
                "assets/images/filter.svg",
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
