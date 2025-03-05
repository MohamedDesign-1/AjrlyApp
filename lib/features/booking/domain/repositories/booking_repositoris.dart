import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/booking_entities.dart';

abstract class BookingRepository {
  Future<Either<Failure, BookingEntities>> getBookingAds();
  Future<Either<Failure, BookingEntities>> getBookingDetails();
  Future<Either<Failure, BookingEntities>> postBooking();
  Future<Either<Failure, BookingEntities>> cancelBooking();
}
