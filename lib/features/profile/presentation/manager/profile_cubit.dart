import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/profile/domain/use_cases/get_profile_data_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/get_profile_data_entity.dart';

part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  GetProfileDataUseCase getProfileDataUseCase;

  ProfileCubit({required this.getProfileDataUseCase}) : super(ProfileInitial());

  void getProfile() {
    emit(ProfileLoading());
    getProfileDataUseCase.invoke().then((value) => value.fold(
        (failure) => emit(ProfileError(failure)),
        (response) => emit(ProfileSuccess(response))));
  }
}
