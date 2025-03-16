import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'reset_pass_cubit_state.dart';

class ResetPassCubitCubit extends Cubit<ResetPassCubitState> {
  ResetPassCubitCubit() : super(ResetPassCubitInitial());

  String password = "";
  
   Future<void> resetPassword(
      {
      required String password,
      required BuildContext context}) async {
        emit(ResetPassCubitLoading());
        Future.delayed(const Duration(seconds: 3),(){
        if(password.isNotEmpty){
          emit(ResetPassCubitSuccess());
        }else{
          emit(ResetPassCubitFailure(errormessage: "SomeThing error, please try again"));
        }
        });
  }



  void setloginpassword({required String p}) {
    password = p;
  }

}
