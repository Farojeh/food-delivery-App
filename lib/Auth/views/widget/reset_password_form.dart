import 'package:advanced_project/Auth/controller/Reset_password_cubit/reset_pass_cubit_cubit.dart';
import 'package:advanced_project/utils/custom_snackpar.dart';
import 'package:advanced_project/widget/custom_button.dart';
import 'package:advanced_project/widget/custom_text_field.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.04,
                left: 30,
                right: 30),
            child: CustomTextField(
              ispass: true,
              onsaved: (data) {
                BlocProvider.of<ResetPassCubitCubit>(context)
                    .setloginpassword(p: data!);
              },
              obscureText: true,
              hint: "   Enter Username",
              backgroundcolor: const Color(0xffFFF3E0).withOpacity(0.3),
              hintcolor: const Color(0xff010101).withOpacity(0.0),
              hintsize: MediaQuery.of(context).size.height * 0.019,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        CustomButton(
            onPressed: () async {
              if (formkey.currentState!.validate()) {
                try {
                  formkey.currentState!.save();
                  await BlocProvider.of<ResetPassCubitCubit>(context)
                      .resetPassword(
                          context: context,
                          password:
                              BlocProvider.of<ResetPassCubitCubit>(context)
                                  .password);
                } catch (error) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(CustomSnackBar().customSnackBar(
                        'Oops', error.toString(), ContentType.failure));
                }
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
            color: const Color(0xffFD6900),
            height: MediaQuery.of(context).size.height * 0.067,
            width: MediaQuery.of(context).size.width * 0.55,
            redbl: 10,
            redbr: 10,
            redtl: 10,
            redtr: 10,
            child: BlocBuilder<ResetPassCubitCubit, ResetPassCubitState>(
              builder: (context, state) {
                if (state is ResetPassCubitLoading) {
                  return const CircularProgressIndicator(
                    color: Colors.white,
                  );
                } else {
                  return const Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 16.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  );
                }
              },
            )),
      ],
    );
  }
}
