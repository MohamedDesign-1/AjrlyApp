import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/booking_entities.dart';
import '../repositories/booking_repositoris.dart';

@injectable
class CancelBookingUseCase {
  final BookingRepository bookingRepository;

  CancelBookingUseCase(this.bookingRepository);

  Future<Either<Failure, BookingEntities>> call() {
    return bookingRepository.cancelBooking();
  }
}
