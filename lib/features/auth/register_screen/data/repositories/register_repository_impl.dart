import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/auth/register_screen/data/data_sources/remote/register_remote_data_source.dart';

import 'package:ajrly/features/auth/register_screen/domain/entities/register_response_entity.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/register_repository.dart';

@Injectable(as: RegisterRepository)
class RegisterRepositoryImpl implements RegisterRepository {
  RegisterRemoteDataSource registerRemoteDataSource;
  RegisterRepositoryImpl({required this.registerRemoteDataSource});

  @override
  Future<Either<Failure, RegisterResponseEntity>> register(
      String email,
      String password,
      String rePassword,
      String fullName,
      String mobile,
      String nationalId,
      String birthday) async {
     var either = await registerRemoteDataSource.register(email, password, rePassword, fullName, mobile, nationalId, birthday);
    return either.fold((Failure error) => Left(error), (response) => Right(response));
  }
}
