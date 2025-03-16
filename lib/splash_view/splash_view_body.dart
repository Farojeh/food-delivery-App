import 'package:advanced_project/Auth/model/user_model.dart';
import 'package:advanced_project/main.dart';
import 'package:advanced_project/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToWelcomView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      height: media.height,
      width: media.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/splash_bg.png",
            height: media.height,
            width: media.width,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/app_logo.png",
            height: media.height * 0.7,
            width: media.width * 0.7,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }

  void navigateToWelcomView() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (userInfo!.getBool("user") == null ||
            userInfo!.getBool("user") == false) {
          GoRouter.of(context).pushReplacement(AppRouter.welcomView);
        } else {
          mainuser = UserModel(
              email: userInfo!.getString("email")!,
              password: userInfo!.getString("password")!);
          GoRouter.of(context).pushReplacement(AppRouter.homeView);
        }
      },
    );
  }
}
