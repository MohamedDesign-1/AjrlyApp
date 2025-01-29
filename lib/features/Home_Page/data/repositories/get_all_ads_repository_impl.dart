import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/Home_Page/data/data_sources/remote/get_all_ads_remote_data_source.dart';

import 'package:ajrly/features/Home_Page/domain/entities/ads_entity.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/get_all_ads_repositories.dart';

@Injectable(as: GetAllAdsRepositories)
class GetAllAdsRepositoriesImpl implements GetAllAdsRepositories {
  GetAllAdsRemoteDataSource getAllAdsRemoteDataSource;
  GetAllAdsRepositoriesImpl({required this.getAllAdsRemoteDataSource});

  @override
  Future<Either<Failure, List<GetAllAdsEntity>>> getAds() async{
  var either = await getAllAdsRemoteDataSource.getAds();
  return either.fold((Failure error) => Left(error), (response) => Right(response));
  }

}