import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/ads_entity.dart';

abstract class GetAllAdsRemoteDataSource {
  Future<Either<Failure, List<GetAllAdsEntity>>> getAds();
}