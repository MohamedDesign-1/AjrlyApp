import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/profile/data/data_sources/remote/get_profile_data_remote_data_source.dart';

import 'package:ajrly/features/profile/domain/entities/get_profile_data_entity.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/get_profile_data_repository.dart';

@Injectable(as: GetProfileDataRepository)
class GetProfileDataRepositoryImpl implements GetProfileDataRepository {
  GetProfileDataRemoteDataSource getProfileDataRemoteDataSource;
  GetProfileDataRepositoryImpl({required this.getProfileDataRemoteDataSource});

  @override
  Future<Either<Failure, GetProfileDataEntity>> getProfileData() async{
    var either = await getProfileDataRemoteDataSource.getProfileData();
    return either.fold((Failure failure) => Left(failure), (response) => Right(response));
  }
}