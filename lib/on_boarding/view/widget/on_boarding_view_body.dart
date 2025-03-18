import 'package:advanced_project/on_boarding/controller/on_boarding_cubit/on_boarding_cubit.dart';
import 'package:advanced_project/utils/app_router.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:advanced_project/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        final cubit = context.read<OnBoardingCubit>();
        return Expanded(
          child: PageView.builder(
            controller: cubit.controller,
            itemCount: state.pageArray.length,
            itemBuilder: (context, index) => Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: media.height * 0.05,
                  ),
                  Image.asset(
                    state.pageArray[index]["image"],
                    height: media.height * 0.4,
                    width: media.width,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: media.height * 0.05,
                  ),
                  Text(
                    state.pageArray[index]["title"],
                    textAlign: TextAlign.center,
                    style:const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      state.pageArray[index]["subtitle"],
                      textAlign: TextAlign.center,
                      style:
                       const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: media.height * 0.07,
                  ),
                  CustomButton(
                    onPressed: () {
                      if (state.selectPage >= 2) {
                        GoRouter.of(context).pushReplacement(AppRouter.maintabview);
                      } else {
                        cubit.nextPage(state.selectPage);
                      }
                    },
                    paddingwidth: media.width * 0.15,
                    redbl: 20,
                    redbr: 20,
                    redtl: 20,
                    redtr: 20,
                    color: ColorsMe.primary,
                    height: media.height * 0.07,
                    width: media.width * 0.85,
                    child:const Text(
                      "Next",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
