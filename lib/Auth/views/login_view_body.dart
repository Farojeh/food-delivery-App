import 'package:advanced_project/Auth/controller/Login_cubit/logincubit_cubit.dart';
import 'package:advanced_project/Auth/views/widget/custom_auth_with_social.dart';
import 'package:advanced_project/Auth/views/widget/custom_login_fields.dart';
import 'package:advanced_project/Auth/views/widget/custom_text.dart';
import 'package:advanced_project/utils/app_router.dart';
import 'package:advanced_project/utils/colors.dart';
import 'package:advanced_project/utils/custom_snackpar.dart';
import 'package:advanced_project/widget/custom_button.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocListener<LogincubitCubit, LogincubitState>(
        listener: (context, state) {
          if (state is LogincubitFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(CustomSnackBar().customSnackBar(
                  'Oops', state.errorMessage, ContentType.failure));
          } else if (state is LogincubitSuccess) {
            GoRouter.of(context).pushReplacement(AppRouter.homeView);
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
                title: "Welcome Back !",
                size: 28,
                alignment: Alignment.center,
                top: 10,
              ),
              // const RegisterInLogin(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Form(key: formkey, child: const CustomLoginFields()),
              InkWell(
                onTap: () => GoRouter.of(context).push(AppRouter.resetpassword),
                child: Container(
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "Forget Password ?",
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Colors.black54,
                      decoration: TextDecoration.underline,
                    ),
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
                        await BlocProvider.of<LogincubitCubit>(context).login(
                            context: context,
                            email:
                                BlocProvider.of<LogincubitCubit>(context).email,
                            password: BlocProvider.of<LogincubitCubit>(context)
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
                  color: ColorsMe.primaryback,
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.75,
                  redbl: 25,
                  redbr: 25,
                  redtl: 25,
                  redtr: 25,
                  child: BlocBuilder<LogincubitCubit, LogincubitState>(
                    builder: (context, state) {
                      if(state is LogincubitLoding){
                        return const CircularProgressIndicator(
                        color: Colors.white,
                      ); 
                      }else{
                         return const Text(
                        "Log in ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      );
                      }
                    },
                  )),
              const CustomAuthWithSocial()
            ],
          ),
        ),
      ),
    );
  }
}
