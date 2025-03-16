import 'package:advanced_project/Auth/controller/Reset_password_cubit/reset_pass_cubit_cubit.dart';
import 'package:advanced_project/Auth/views/widget/arrow_back_widget.dart';
import 'package:advanced_project/Auth/views/widget/reset_password_design.dart';
import 'package:advanced_project/Auth/views/widget/reset_password_form.dart';
import 'package:advanced_project/utils/custom_snackpar.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordPageBody extends StatelessWidget {
  const ResetPasswordPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocListener<ResetPassCubitCubit, ResetPassCubitState>(
        listener: (context, state) {
          if(state is ResetPassCubitFailure){
            ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(CustomSnackBar().customSnackBar(
                'Oops', state.errormessage, ContentType.failure));
          }else if(state is ResetPassCubitSuccess){
            GoRouter.of(context).pop();
          }
        },
        child:const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ArrowBackWidget(),
            ResetPasswordDesign(),
            ResetPasswordForm()
          ],
        ),
      ),
    );
  }
}
