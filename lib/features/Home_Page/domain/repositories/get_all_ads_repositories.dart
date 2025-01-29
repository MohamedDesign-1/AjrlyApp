import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/ads_entity.dart';

abstract class GetAllAdsRepositories {
  Future<Either<Failure, List<GetAllAdsEntity>>> getAds();
}