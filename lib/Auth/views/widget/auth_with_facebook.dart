import 'package:advanced_project/Auth/views/widget/image_button.dart';
import 'package:flutter/material.dart';

class AuthWithFacebook extends StatelessWidget {
  const AuthWithFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageButton(
      onTap: () {
        // ScaffoldMessenger.of(context)
        //   ..hideCurrentSnackBar()
        //   ..showSnackBar(CustomSnackBar().customSnackBar(
        //       'Oops', "don't exist in your country", ContentType.failure));
      },
      image: "assets/images/face.png",
      child: Text(
        "Facebook",
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.height * 0.018,
          color: Colors.black,
        ),
      ),
    );
  }
}
