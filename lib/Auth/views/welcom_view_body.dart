import 'package:advanced_project/Auth/views/widget/welcom_button.dart';
import 'package:advanced_project/Auth/views/widget/welcom_view_top.dart';
import 'package:advanced_project/utils/app_router.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomViewBody extends StatelessWidget {
  const WelcomViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const WelcomViewTop(),
          const SizedBox(height: 20,),
          Text(
              "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorsMe.sectext,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          WelcomButton(
            title: "Login",
            sizehieght: MediaQuery.of(context).size.height * 0.06,
            onPressed: () => GoRouter.of(context).push(AppRouter.loginview),
          ),
          WelcomButton(
            title: "Create an Account",
            sizehieght: MediaQuery.of(context).size.height * 0.045,
            side: ColorsMe.primary,
            onPressed: () => GoRouter.of(context).push(AppRouter.signupview),
          ),
          
        ],
      ),
    );
  }
}
