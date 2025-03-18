import 'package:advanced_project/on_boarding/controller/on_boarding_cubit/on_boarding_cubit.dart';
import 'package:advanced_project/on_boarding/view/widget/category_row.dart';
import 'package:advanced_project/on_boarding/view/widget/on_boarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: Scaffold(
          body: SingleChildScrollView(
              child: SizedBox(
        height: media.height,
        width: media.width,
        child: Column(
          children: [
            SizedBox(
              height: media.height * 0.032,
            ),
            const CategoryRow(),
            const OnBoardingViewBody()
          ],
        ),
      ))),
    );
  }
}
