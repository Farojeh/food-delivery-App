import 'package:advanced_project/Auth/views/sign_up_view_body.dart';
import 'package:advanced_project/Auth/views/widget/background_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundView(screen: SignUpViewBody(), goback: true),
    );
  }
}
