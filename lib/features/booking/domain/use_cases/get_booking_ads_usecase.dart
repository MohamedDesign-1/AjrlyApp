import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/booking_entities.dart';
import '../repositories/booking_repositoris.dart';

@injectable
class GetBookingAdsUseCase {
  final BookingRepository bookingRepository;

  GetBookingAdsUseCase(this.bookingRepository);

  Future<Either<Failure, BookingEntities>> call() {
    return bookingRepository.getBookingAds();
  }
}
