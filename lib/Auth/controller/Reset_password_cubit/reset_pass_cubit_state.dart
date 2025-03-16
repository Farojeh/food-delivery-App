part of 'reset_pass_cubit_cubit.dart';

@immutable
sealed class ResetPassCubitState {}

final class ResetPassCubitInitial extends ResetPassCubitState {}
final class ResetPassCubitLoading extends ResetPassCubitState {}
final class ResetPassCubitFailure extends ResetPassCubitState {
  final String errormessage ;

  ResetPassCubitFailure({required this.errormessage});
}
final class ResetPassCubitSuccess extends ResetPassCubitState {}
