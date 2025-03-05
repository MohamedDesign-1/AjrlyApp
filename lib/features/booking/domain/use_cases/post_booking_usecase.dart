import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/booking_entities.dart';
import '../repositories/booking_repositoris.dart';

@injectable
class PostBookingUseCase {
  final BookingRepository bookingRepository;

  PostBookingUseCase(this.bookingRepository);

  Future<Either<Failure, BookingEntities>> call() {
    return bookingRepository.postBooking();
  }
}
