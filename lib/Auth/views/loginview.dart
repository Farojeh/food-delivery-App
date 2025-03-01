import 'package:advanced_project/Auth/views/login_view_body.dart';
import 'package:advanced_project/Auth/views/widget/background_view.dart';
import 'package:flutter/material.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: BackgroundView(screen: LoginViewBody(), goback: true),
    );
  }
}