import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
   String password = "";
  String email = "";

  Future<void> register(
      {required String email,
      required String password,
      required BuildContext context}) async {
        emit(SignUpLoading());
        Future.delayed(const Duration(seconds: 3),(){
        if(email.isNotEmpty && password.isNotEmpty){
          emit(SignUpSuccess());
        }else{
          emit(SignUpFailure(errorMessage: "SomeThing error, please try again"));
        }
        });
  }

  void setregisteremail({required String n}) {
    email = n;
  }

  void setregisterpassword({required String p}) {
    password = p;
  }
}
