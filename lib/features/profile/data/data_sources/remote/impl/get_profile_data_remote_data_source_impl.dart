import 'package:ajrly/core/api/api_manager.dart';
import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/profile/data/models/get_profile_data_model.dart';
import 'package:ajrly/features/profile/domain/entities/get_profile_data_entity.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/api/end_pointes.dart';
import '../../../../../../core/utils/shared_pref_utils.dart';
import '../get_profile_data_remote_data_source.dart';

@Injectable(as: GetProfileDataRemoteDataSource)
class GetProfileDataRemoteDataSourceImpl implements GetProfileDataRemoteDataSource {
  ApiManager apiManager;
  GetProfileDataRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failure, GetProfileDataEntity>> getProfileData() async {
    try {
      print("Checking internet connectivity...");
      ConnectivityResult checkResult = ConnectivityResult.wifi;
      print("Connectivity result: $checkResult");

      if (checkResult == ConnectivityResult.wifi || checkResult == ConnectivityResult.mobile) {
        var token = SharedPrefUtils.getDate(key: 'token');
        print("Retrieved token: $token");

        var response = await apiManager.get(EndPoints.profileApi, headers: {
          "Authorization": "Bearer $token",
        });

        print("API response status code:${response.statusCode}");
        print("API response data: ${response.data}");

        var getProfileDto = GetProfileDataModel.fromJson(response.data);
        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          print("Profile data retrieved successfully.");
          return Right(getProfileDto);
        } else {
          print("Server error: ${response.statusMessage}");
          return Left(ServerFailure(errorMessage: response.statusMessage!));
        }
      } else {
        print("No Internet Connection");
        return Left(NetworkFailure(errorMessage: "No Internet Connection"));
      }
    } catch (e) {
      print("Exception caught: ${e.toString()}");
      return Left(Failure(errorMessage: e.toString()));
    }
  }
}
