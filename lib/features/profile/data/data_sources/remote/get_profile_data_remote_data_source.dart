import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/get_profile_data_entity.dart';

abstract class GetProfileDataRemoteDataSource {
  Future<Either<Failure , GetProfileDataEntity>> getProfileData();
}