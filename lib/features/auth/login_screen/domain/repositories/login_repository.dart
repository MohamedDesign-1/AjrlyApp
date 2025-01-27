import 'package:ajrly/features/auth/login_screen/domain/entities/login_response_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginResponseEntity>> login(
      {required String email, required String password});
}

