part of 'main_layout_cubit.dart';

@immutable
abstract class MainLayoutState {}

class MainLayoutInitial extends MainLayoutState {}

class MainLayoutIndexChanged extends MainLayoutState {
  final int index;

  MainLayoutIndexChanged(this.index);
}

class MainLayoutDrawerToggled extends MainLayoutState {}

class MainLayoutLoaded extends MainLayoutState {
  final int currentIndex;
  final List<Widget> screens;

  MainLayoutLoaded(this.currentIndex, this.screens);
}

class MainLayoutError extends MainLayoutState {
  final String message;

  MainLayoutError(this.message);
}
