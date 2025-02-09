part of 'admin_main_lay_out_cubit.dart';

@immutable
sealed class AdminMainLayOutState {}

final class AdminMainLayOutInitial extends AdminMainLayOutState {}

final class AdminMainLayoutIndexChanged extends AdminMainLayOutState {
  final int index;

  AdminMainLayoutIndexChanged(this.index);
}

final class AdminMainLayOutLoaded extends AdminMainLayOutState {
  final int currentIndex;
  final List<Widget> screens;
  AdminMainLayOutLoaded(this.currentIndex, this.screens);
}

final class AdminMainLayOutError extends AdminMainLayOutState {
  final String message;

  AdminMainLayOutError(this.message);

}

final class AdminMainLayoutLoading extends AdminMainLayOutState {}
