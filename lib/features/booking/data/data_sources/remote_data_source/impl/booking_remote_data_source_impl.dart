import 'dart:math';

import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/booking/data/models/booking_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/api/api_manager.dart';
import '../../../../../../core/api/end_pointes.dart';
import '../../../../../../core/utils/shared_pref_utils.dart';
import '../../../../domain/entities/booking_entities.dart';
import '../booking_remote_data_source.dart';

@Injectable(as: BookingRemoteDataSource)
class GetBookingAdsRemoteDataSourceImpl implements BookingRemoteDataSource {
  final ApiManager apiManager;
  GetBookingAdsRemoteDataSourceImpl(this.apiManager);

  @override
  Future<Either<Failure, BookingModel>> getBookingAds() async {
    try {
      print("🚀 Fetching ads started...");

      var checkResult = await Connectivity().checkConnectivity();
      print("🔍 Internet connection status: $checkResult");

      if (checkResult == ConnectivityResult.none) {
        print("⚠️ No internet connection detected.");
        return Left(NetworkFailure(errorMessage: "No Internet Connection"));
      }

      print("🌐 Internet connection is available.");

      var token = SharedPrefUtils.getDate(key: 'token');
      if (token == null) {
        print("❌ Token is missing!");
        return Left(ServerFailure(errorMessage: "User is not authenticated"));
      }

      print("🔑 Retrieved token: $token");

      var response = await apiManager.get(EndPoints.bookingApi, headers: {
        "Authorization": "Bearer $token",
      });

      print("📩 API response received: ${response.data}");

      if (response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
        print("✅ API response status: ${response.statusCode} - Success");

        // ✅ تحويل البيانات إلى `BookingModel`
        var bookingModel = BookingModel.fromJson(response.data);
        print("📊 Total ads fetched: ${bookingModel.data?.length ?? 0}");

        return Right(bookingModel);
      } else {
        print("❌ Server error: ${response.statusMessage}");
        return Left(ServerFailure(errorMessage: response.statusMessage ?? "Unknown server error"));
      }
    } catch (e) {
      print("🔥 An error occurred while fetching ads: $e");
      return Left(NetworkFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, BookingEntities>> cancelBooking() async {
    return Left(NetworkFailure(errorMessage: e.toString()));

  }

  @override
  Future<Either<Failure, BookingEntities>> getBookingDetails() async {
    // ❌ لم يتم تنفيذ الدالة بعد
    return Left(NetworkFailure(errorMessage: e.toString()));

  }

  @override
  Future<Either<Failure, BookingEntities>> postBooking() async {
    // ❌ لم يتم تنفيذ الدالة بعد
    return Left(NetworkFailure(errorMessage: "postBooking() is not implemented yet."));
  }
}
