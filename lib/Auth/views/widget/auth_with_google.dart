import 'package:advanced_project/Auth/views/widget/image_button.dart';
import 'package:flutter/material.dart';

class AuthWithGoogle extends StatelessWidget {
  const AuthWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageButton(
      image: "assets/images/google.png",
      child: Text(
        "Google",
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.height * 0.018,
          color: Colors.black,
        ),
      ),
    );
  }
}
