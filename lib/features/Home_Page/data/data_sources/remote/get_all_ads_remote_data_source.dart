import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/ads_entity.dart';
import '../../models/get_all_ads_model.dart';

abstract class GetAllAdsRemoteDataSource {
  Future<Either<Failure, List<GetAllAdsEntity>>> getAds();
}