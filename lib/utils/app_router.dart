import 'package:advanced_project/Auth/controller/Login_cubit/logincubit_cubit.dart';
import 'package:advanced_project/Auth/controller/Reset_password_cubit/reset_pass_cubit_cubit.dart';
import 'package:advanced_project/Auth/controller/sign_up/sign_up_cubit.dart';
import 'package:advanced_project/Auth/views/loginview.dart';
import 'package:advanced_project/Auth/views/reset_password_page.dart';
import 'package:advanced_project/Auth/views/sign_up_view.dart';
import 'package:advanced_project/Auth/views/welcom_view.dart';
import 'package:advanced_project/home/home_view.dart';
import 'package:advanced_project/main_tab_view/main_tab_view.dart';
import 'package:advanced_project/on_boarding/view/on_boarding_view.dart';
import 'package:advanced_project/splash_view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = "/Home";
  static const welcomView = "/WelcomView";
  static const loginview = "/LoginView";
  static const signupview = "/SignUpView";
  static const resetpassword = "/ResetPassword";
  static const onboarding = "/OnBoarding";
  static const maintabview = "/MainTabView";

  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: welcomView,
      builder: (context, state) => const WelcomView(),
    ),
    GoRoute(
      path: loginview,
      builder: (context, state) => BlocProvider<LogincubitCubit>(
        create: (context) => LogincubitCubit(),
        child: const Loginview(),
      ),
    ),
    GoRoute(
      path: signupview,
      builder: (context, state) => BlocProvider<SignUpCubit>(
        create: (context) => SignUpCubit(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: resetpassword,
      builder: (context, state) => BlocProvider<ResetPassCubitCubit>(
        create: (context) => ResetPassCubitCubit(),
        child: const ResetPasswordPage(),
      ),
    ),
    GoRoute(
      path: onboarding,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: maintabview,
      builder: (context, state) => const MainTabView(),
    ),
  ]);
}
