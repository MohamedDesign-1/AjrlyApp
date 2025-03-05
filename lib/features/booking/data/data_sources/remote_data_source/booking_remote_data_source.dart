import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/booking_entities.dart';

abstract class BookingRemoteDataSource {
  Future<Either<Failure, BookingEntities>> getBookingAds();
  Future<Either<Failure, BookingEntities>> getBookingDetails();
  Future<Either<Failure, BookingEntities>> postBooking();
  Future<Either<Failure, BookingEntities>> cancelBooking();
}
