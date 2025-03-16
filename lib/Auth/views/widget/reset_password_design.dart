import 'package:flutter/material.dart';

class ResetPasswordDesign extends StatelessWidget {
  const ResetPasswordDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
              padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1 , bottom:  MediaQuery.of(context).size.height*0.05),
              child: Image.asset("assets/images/resetpas1.png" , 
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,
              ),
            ),
           const Text("Reset Password" , style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
           const Text("Please enter your password carefully and accurately." , style: TextStyle(
              fontSize: 14.5,
              fontWeight: FontWeight.w400,
              color: Colors.black54
            ),
            textAlign: TextAlign.center,
            ),
      ],
    );
  }
}
