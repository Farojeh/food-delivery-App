import 'package:flutter/material.dart';

class WelcomViewTop extends StatelessWidget {
  const WelcomViewTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Image.asset("assets/images/welcome_top_shape.png",
                height: MediaQuery.of(context).size.height*0.55,
                width:MediaQuery.of(context).size.width ,
                fit: BoxFit.cover,
                ),
              ),
              Image.asset("assets/images/app_logo.png",
              height:180,
              width: 210,
              fit: BoxFit.contain,
              )
            ],
          );
  }
}