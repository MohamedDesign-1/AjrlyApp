import 'package:ajrly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/register_response_entity.dart';

abstract class RegisterRepository {
  Future<Either<Failure, RegisterResponseEntity>> register(
      String email,
      String password,
      String rePassword,
      String fullName,
      String mobile,
      String nationalId,
      String birthday);
}
