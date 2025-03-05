import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/booking/data/data_sources/remote_data_source/booking_remote_data_source.dart';
import 'package:ajrly/features/booking/domain/entities/booking_entities.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/booking_repositoris.dart';

@Injectable(as: BookingRepository)
class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource bookingRemoteDataSource;

  BookingRepositoryImpl({required this.bookingRemoteDataSource});

  @override
  Future<Either<Failure, BookingEntities>> getBookingAds() async {
    return await bookingRemoteDataSource.getBookingAds();
  }

  @override
  Future<Either<Failure, BookingEntities>> getBookingDetails() async {
    return await bookingRemoteDataSource.getBookingDetails();
  }

  @override
  Future<Either<Failure, BookingEntities>> postBooking() async {
    return await bookingRemoteDataSource.postBooking();
  }

  @override
  Future<Either<Failure, BookingEntities>> cancelBooking() async {
    return await bookingRemoteDataSource.cancelBooking();
  }
}
