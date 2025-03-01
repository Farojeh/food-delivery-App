import 'package:advanced_project/Auth/controller/sign_up/sign_up_cubit.dart';
import 'package:advanced_project/Auth/views/widget/custom_text.dart';
import 'package:advanced_project/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignupFields extends StatefulWidget {
  const CustomSignupFields({super.key});

  @override
  State<CustomSignupFields> createState() => _CustomSignupFieldsState();
}

class _CustomSignupFieldsState extends State<CustomSignupFields> {
  String? email;

  String? password;

  String? confirmpass;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(
          title: "Email",
          size: 16,
          top: 10,
          left: MediaQuery.of(context).size.height * 0.013,
          bottom: MediaQuery.of(context).size.height * 0.005,
        ),
        CustomTextField(
          isemail: true,
          onsaved: (data) {
            email = data;
            BlocProvider.of<SignUpCubit>(context).setregisteremail(n: email!);
          },
          hint: "   Enter Username",
          backgroundcolor: const Color(0xffF5F5F5),
          hintcolor: const Color(0xff010101).withOpacity(0.0),
          hintsize: MediaQuery.of(context).size.height * 0.018,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        CustomText(
          title: "Password",
          size: 16,
          left: 10,
          top: MediaQuery.of(context).size.height * 0.011,
          bottom: MediaQuery.of(context).size.height * 0.005,
        ),
        CustomTextField(
          ispass: true,
          onsaved: (data) {
            password = data;
            BlocProvider.of<SignUpCubit>(context)
                .setregisterpassword(p: password!);
          },
          obscureText: true,
          hint: "   Enter Username",
          backgroundcolor: const Color(0xffF5F5F5),
          hintcolor: const Color(0xff010101).withOpacity(0.0),
          hintsize: MediaQuery.of(context).size.height * 0.018,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        CustomText(
          title: "Confirm Password",
          size: 16,
          left: 10,
          top: MediaQuery.of(context).size.height * 0.011,
          bottom: MediaQuery.of(context).size.height * 0.011,
        ),
        CustomTextField(
          ispass: true,
          onsaved: (data) {
            confirmpass = data;
            if (confirmpass != password) {
              throw "";
            }
          },
          obscureText: true,
          hint: "   Enter Username",
          backgroundcolor: const Color(0xffF5F5F5),
          hintcolor: const Color(0xff010101).withOpacity(0.0),
          hintsize: MediaQuery.of(context).size.height * 0.018,
        ),
      ],
    );
  }
}
