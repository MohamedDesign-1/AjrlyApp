import 'package:ajrly/features/Home_Page/domain/repositories/get_all_ads_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../entities/ads_entity.dart';

@injectable
class GetAdsUseCase {
  GetAllAdsRepositories getAllAdsRepositories;
  GetAdsUseCase({required this.getAllAdsRepositories});

  Future<Either<Failure, List<GetAllAdsEntity>>> invoke() async {
    return await getAllAdsRepositories.getAds();
  }
}