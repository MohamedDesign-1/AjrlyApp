import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/get_all_ads_model.dart';
import '../entities/ads_entity.dart';

abstract class GetAllAdsRepositories {
  Future<Either<Failure, List<GetAllAdsEntity>>> getAds();
}