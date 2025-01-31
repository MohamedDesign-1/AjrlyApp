import 'package:ajrly/core/api/api_manager.dart';
import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/core/utils/shared_pref_utils.dart';
import 'package:ajrly/features/Home_Page/data/models/get_all_ads_model.dart';
import 'package:ajrly/features/Home_Page/domain/entities/ads_entity.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/api/end_pointes.dart';
import '../get_all_ads_remote_data_source.dart';

@Injectable(as: GetAllAdsRemoteDataSource)
class GetAllAdsRemoteDataSourceImpl implements GetAllAdsRemoteDataSource {
  final ApiManager apiManager;

  GetAllAdsRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failure, List<GetAllAdsModel>>> getAds() async {
    try {
      print("🚀 Fetching ads started...");
      ConnectivityResult checkResult = ConnectivityResult.wifi;
      print("🔍 Internet connection status: $checkResult");

      if (checkResult == ConnectivityResult.wifi || checkResult == ConnectivityResult.mobile) {
        print("🌐 Internet connection is available.");

        var token = SharedPrefUtils.getDate(key: 'token');
        print("🔑 Retrieved token: $token");

        var response = await apiManager.get(EndPoints.advertisementsApi, headers: {
          "Authorization": "Bearer $token",
        });

        print("📩 API response received: ${response.data}");

        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          print("✅ API response status: ${response.statusCode} - Success");

          List<GetAllAdsModel> adsList = [];
          var getNewsDto = GetAllAdsModel.fromJson(response.data);

          // Ensure all ads are added to the list
          if (getNewsDto.data != null) {
            adsList.addAll(getNewsDto.data!.map((ad) => GetAllAdsModel(data: [ad])));
          }

          print("📊 Total ads fetched: ${adsList.length}");

          return Right(adsList);
        } else {
          print("❌ Server error: ${response.statusMessage}");
          return Left(ServerFailure(errorMessage: response.statusMessage!));
        }
      } else {
        print("⚠️ No internet connection detected.");
        return Left(NetworkFailure(errorMessage: "No Internet Connection"));
      }
    } catch (e) {
      print("🔥 An error occurred while fetching ads: $e");
      return Left(Failure(errorMessage: e.toString()));
    }
  }
}

