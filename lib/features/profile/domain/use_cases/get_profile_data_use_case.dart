import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/profile/domain/entities/get_profile_data_entity.dart';
import 'package:ajrly/features/profile/domain/repositories/get_profile_data_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProfileDataUseCase {
  GetProfileDataRepository getProfileDataRepository;
  GetProfileDataUseCase({required this.getProfileDataRepository});

  Future<Either<Failure , GetProfileDataEntity>> invoke () async {
    return await getProfileDataRepository.getProfileData();
  }
}