import 'package:advanced_project/Auth/controller/sign_up/sign_up_cubit.dart';
import 'package:advanced_project/Auth/views/widget/custom_auth_with_social.dart';
import 'package:advanced_project/Auth/views/widget/custom_signup_fields.dart';
import 'package:advanced_project/Auth/views/widget/custom_text.dart';
import 'package:advanced_project/utils/app_router.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:advanced_project/utils/custom_snackpar.dart';
import 'package:advanced_project/widget/custom_button.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
   final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(CustomSnackBar().customSnackBar(
                'Oops', state.errorMessage, ContentType.failure));
        } else if (state is SignUpSuccess) {
          GoRouter.of(context).go(AppRouter.homeView);
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomText(
              title: "Create an account",
              size: 25,
              alignment: Alignment.center,
              top: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.012,
            ),
            Form(
                autovalidateMode: autovalidateMode,
                key: formkey,
                child: const CustomSignupFields()),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomButton(
              onPressed: () async {
                if (formkey.currentState!.validate()) {
                  try {
                    var cubit = BlocProvider.of<SignUpCubit>(context);
                    formkey.currentState!.save();
                    await cubit.register(
                        context: context,
                        email: cubit.email,
                        password:
                            BlocProvider.of<SignUpCubit>(context).password);
                    //cretae stripe user
                  } catch (error) {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(CustomSnackBar().customSnackBar(
                          'Oops',
                          'password is\'t equal confirm password',
                          ContentType.failure));
                  }
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
              color: ColorsMe.primaryback,
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * 0.75,
              redbl: 22,
              redbr: 22,
              redtl: 22,
              redtr: 22,
              child: BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  if (state is SignUpSuccess || state is SignUpFailure) {
                    return const Text(
                      "Sign Up ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    );
                  } else if (state is SignUpLoading) {
                    return const CircularProgressIndicator(
                      color: Colors.white,
                    );
                  } else {
                    return const Text(
                      "Sign Up ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    );
                  }
                },
              ),
            ),
            CustomAuthWithSocial(
              top: MediaQuery.of(context).size.height * 0.02,
              bottom: MediaQuery.of(context).size.height * 0.02,
            )
          ],
        ),
      ),
    );
  }
}