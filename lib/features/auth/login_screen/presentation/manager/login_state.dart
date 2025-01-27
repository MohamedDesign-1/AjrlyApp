part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoadingState extends LoginState {}
final class LoginErrorState extends LoginState {
  final Failure failure;
  LoginErrorState(this.failure);
}
final class LoginSuccessState extends LoginState {
  final LoginResponseEntity loginResponseEntity;
  LoginSuccessState(this.loginResponseEntity);
}