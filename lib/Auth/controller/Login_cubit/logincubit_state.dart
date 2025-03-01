part of 'logincubit_cubit.dart';

@immutable
sealed class LogincubitState {}

final class LogincubitInitial extends LogincubitState {}
final class LogincubitFailure extends LogincubitState {
  final String errorMessage ;

  LogincubitFailure({required this.errorMessage});
}
final class LogincubitLoding extends LogincubitState {}
final class LogincubitSuccess extends LogincubitState {}
