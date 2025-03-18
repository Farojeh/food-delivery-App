import 'package:advanced_project/on_boarding/controller/on_boarding_cubit/on_boarding_cubit.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        final cubit = context.read<OnBoardingCubit>();
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 85,
              child: TextButton(
                  style: ButtonStyle(
                    overlayColor:
                        MaterialStatePropertyAll(Colors.white.withOpacity(0)),
                  ),
                  onPressed: () {
                    cubit.previousPage();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 40,
                    color:state.selectPage>0? ColorsMe.primary:ColorsMe.primary.withOpacity(0),
                  )),
            ),
            LinearPercentIndicator(
              animationDuration: 1000,
              animateFromLastPercent: true,
              animation: true,
              width: MediaQuery.of(context).size.width * 0.6,
              percent: state.percent,
              lineHeight: 8,
              barRadius: const Radius.circular(20),
              linearGradient: const LinearGradient(
                  colors: [Color(0xffFFD900), Color(0xffFD5D00)]),
            ),
          ],
        );
      },
    );
  }
}
