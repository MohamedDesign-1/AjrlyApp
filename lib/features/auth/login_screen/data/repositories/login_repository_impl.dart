import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/auth/login_screen/data/data_sources/remote/login_remote_data_source.dart';

import 'package:ajrly/features/auth/login_screen/domain/entities/login_response_entity.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/login_repository.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl extends LoginRepository {
  LoginRemoteDataSource loginRemoteDataSource;

  LoginRepositoryImpl({required this.loginRemoteDataSource});

  @override
  Future<Either<Failure, LoginResponseEntity>> login(
      {required String email, required String password}) async {
    var either =
        await loginRemoteDataSource.login(email: email, password: password);
    return either.fold(
        (Failure error) => Left(error), (response) => Right(response));
  }
}
