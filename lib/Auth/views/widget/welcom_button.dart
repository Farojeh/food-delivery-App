import 'package:advanced_project/utils/colors.dart';
import 'package:advanced_project/widget/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomButton extends StatelessWidget {
  final String title ;
  final double sizehieght;
  final Color? side ;
  final void Function()? onPressed;
  const WelcomButton({super.key, required this.title, this.onPressed, required this.sizehieght, this.side});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            height:sizehieght,
          ),
          CustomButton(
              onPressed: onPressed,
              side:side ,
              color:side== null? ColorsMe.primary:side!,
              height: 60,
              width: MediaQuery.of(context).size.width * 0.85,
              paddingwidth: MediaQuery.of(context).size.width*0.07,
              redbl: 28,
              redbr: 28,
              redtl: 28,
              redtr: 28,
              child:Text(title , style: TextStyle(
                color:side==null? Colors.white:side!,
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),))
      ],
    );
  }
}