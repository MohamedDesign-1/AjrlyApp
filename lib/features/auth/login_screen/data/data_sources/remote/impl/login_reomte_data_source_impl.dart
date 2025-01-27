import 'package:ajrly/core/api/api_manager.dart';
import 'package:ajrly/core/errors/failures.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ajrly/features/auth/login_screen/domain/entities/login_response_entity.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/api/end_pointes.dart';
import '../../../../../../../core/utils/shared_pref_utils.dart';
import '../../../models/login_response_model.dart';
import '../login_remote_data_source.dart';

@Injectable(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  ApiManager apiManger;
  LoginRemoteDataSourceImpl({required this.apiManger});

  @override
  Future<Either<Failure, LoginResponseEntity>> login(
      {required String email, required String password}) async {
    try {
      // Log to check connectivity status
      print("Checking connectivity...");
      ConnectivityResult checkResult = ConnectivityResult.wifi;
      if (checkResult == ConnectivityResult.wifi ||
          checkResult == ConnectivityResult.mobile) {
        print("Internet connection detected.");

        // Log the request body
        print("Sending login request: Email: $email");

        var response = await apiManger.post(EndPoints.login, body: {
          "email": email,
          "password": password
        });

        // Log the response data
        print("Response received: ${response.data}");

        var loginResponse = LoginResponseDto.fromJson(response.data);
        await SharedPrefUtils.saveDate(
            key: 'token', value: loginResponse.token);

        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          // Log successful login
          print("Login successful, token saved.");
          return Right(loginResponse);
        } else {
          // Log server failure
          print("Server error: ${response.statusMessage}");
          return Left(ServerFailure(errorMessage: response.statusMessage!));
        }
      } else {
        // Log network failure
        print("No internet connection.");
        return Left(NetworkFailure(errorMessage: "No Internet Connection"));
      }
    } catch (e) {
      // Log unexpected error
      print("Error occurred: ${e.toString()}");
      return Left(Failure(errorMessage: e.toString()));
    }
  }
}
