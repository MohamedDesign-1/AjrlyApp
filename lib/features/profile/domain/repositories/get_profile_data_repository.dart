import 'package:ajrly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/get_profile_data_entity.dart';

abstract class GetProfileDataRepository {
  Future<Either<Failure , GetProfileDataEntity>> getProfileData();
}