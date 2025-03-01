import 'package:ajrly/features/booking/domain/entities/booking_entitys.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/post_booking_entites.dart';

abstract class GetBookingAdsRepository {
  Future<Either<Failure, BookingEntities>> getBookingAds();
}

abstract class GetBookingDetailsRepository {
  Future<Either<Failure, BookingEntities>> getBookingDetails();
}

abstract class UnBookingAdsRepository {
  Future<Either<Failure, BookingEntities>> unBookingAds();
}

abstract class PostBookingRepository {
  Future<Either<Failure, PostBookingEntites>> postBooking();
}