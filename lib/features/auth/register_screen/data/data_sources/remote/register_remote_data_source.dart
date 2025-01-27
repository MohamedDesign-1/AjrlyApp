import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/failures.dart';
import '../../../domain/entities/register_response_entity.dart';

abstract class RegisterRemoteDataSource {
  Future<Either<Failure, RegisterResponseEntity>> register(
      String email,
      String password,
      String rePassword,
      String fullName,
      String mobile,
      String nationalId,
      String birthday);

}