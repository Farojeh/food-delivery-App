import 'package:advanced_project/Auth/views/welcom_view_body.dart';
import 'package:flutter/material.dart';

class WelcomView extends StatefulWidget {
  const WelcomView({super.key});

  @override
  State<WelcomView> createState() => _WelcomViewState();
}

class _WelcomViewState extends State<WelcomView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomViewBody(),
    );
  }
}