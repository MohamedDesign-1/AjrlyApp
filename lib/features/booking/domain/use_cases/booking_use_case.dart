import 'package:ajrly/features/booking/domain/repositories/booking_repositoris.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/booking_entitys.dart';
import '../entities/post_booking_entites.dart';

class BookingUseCase {
  GetBookingAdsRepository getBookingAdsRepository;
  PostBookingRepository postBookingRepository;
  UnBookingAdsRepository unBookingAdsRepository;
  GetBookingDetailsRepository getBookingDetailsRepository;

  BookingUseCase({
    required this.getBookingAdsRepository,
    required this.postBookingRepository,
    required this.unBookingAdsRepository,
    required this.getBookingDetailsRepository,
  });

  Future<Either<Failure, BookingEntities>> getBookingAds(){
   return getBookingAdsRepository.getBookingAds();
  }
  Future<Either<Failure, PostBookingEntites>> postBooking() {
    return postBookingRepository.postBooking();
  }
  Future<Either<Failure, BookingEntities>> unBookingAds(){
    return unBookingAdsRepository.unBookingAds();
  }
  Future<Either<Failure, BookingEntities>> getBookingDetails(){
    return getBookingDetailsRepository.getBookingDetails();
  }
}