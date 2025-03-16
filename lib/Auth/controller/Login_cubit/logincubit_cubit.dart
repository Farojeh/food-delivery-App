import 'dart:developer';

import 'package:advanced_project/Auth/model/user_model.dart';
import 'package:advanced_project/main.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part 'logincubit_state.dart';

class LogincubitCubit extends Cubit<LogincubitState> {
  LogincubitCubit() : super(LogincubitInitial());
  
  String password = "";
  String email = "";

  Future<void> login(
      {required String email,
      required String password,
      required BuildContext context}) async {
        emit(LogincubitLoding());
        Future.delayed(
      const Duration(seconds: 3),
      () {
        try {
      if(email.isNotEmpty && password.isNotEmpty){
         mainuser = UserModel(email: email, password: password);
            userInfo!.setBool("user", true);
            userInfo!.setString("email", email);
            userInfo!.setString("password", password);
        emit(LogincubitSuccess());
      }else{
        emit(LogincubitFailure(errorMessage: "Something error,please try again"));
      }
      
    } on Exception catch (e) {
      log('e: $e');
    }
      },
    );
  }

  void setloginemail({required String n}) {
    email = n;
  }

  void setloginpassword({required String p}) {
    password = p;
  }


}
