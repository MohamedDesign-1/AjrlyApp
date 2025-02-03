part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileSuccess extends ProfileState {
  final GetProfileDataEntity userProfileData;
  ProfileSuccess(this.userProfileData);
}

final class ProfileError extends ProfileState {
  final Failure failure;
  ProfileError(this.failure);
}
