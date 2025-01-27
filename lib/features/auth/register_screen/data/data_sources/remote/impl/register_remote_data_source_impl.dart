import 'package:ajrly/core/api/api_manager.dart';
import 'package:ajrly/core/errors/failures.dart';

import 'package:ajrly/features/auth/register_screen/domain/entities/register_response_entity.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/api/end_pointes.dart';
import '../../../models/register_respone_dto.dart';
import '../register_remote_data_source.dart';

@Injectable(as: RegisterRemoteDataSource)
class RegisterRemoteDataSourceImpl implements RegisterRemoteDataSource {
  ApiManager apiManger;
  RegisterRemoteDataSourceImpl({required this.apiManger});

  @override
  Future<Either<Failure, RegisterResponseEntity>> register(
      String email,
      String password,
      String rePassword,
      String fullName,
      String mobile,
      String nationalId,
      String birthday,
      ) async {
    print("Starting registration process..."); // Log start

    try {
      print("Checking connectivity...");
      ConnectivityResult checkResult = ConnectivityResult.wifi;

      if (checkResult == ConnectivityResult.wifi || checkResult == ConnectivityResult.mobile) {
        print("Connectivity check passed, sending API request...");

        var response = await apiManger.post(EndPoints.register, body: {
          "email": email,
          "password": password,
          "rePassword": rePassword,
          "fullName": fullName,
          "mobile": mobile,
          "nationalId": nationalId,
          "birthday": birthday
        });

        print("API response received: ${response.statusCode}");
        print("Response body: ${response.data}");

        var registerResponse = RegisterResponseDto.fromJson(response.data);

        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          print("Registration successful.");
          return Right(registerResponse);
        } else {
          print("Server error: ${response.statusMessage}");
          return Left(ServerFailure(errorMessage: response.statusMessage!));
        }
      } else {
        print("No Internet Connection");
        return Left(NetworkFailure(errorMessage: "No Internet Connection"));
      }
    } catch (e) {
      print("An error occurred: ${e.toString()}");
      return Left(Failure(errorMessage: e.toString()));
    }
  }
}
