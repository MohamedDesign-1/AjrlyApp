import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/failures.dart';
import '../../../domain/entities/login_response_entity.dart';

abstract class LoginRemoteDataSource {
  Future<Either<Failure, LoginResponseEntity>> login(
      {required String email, required String password});}