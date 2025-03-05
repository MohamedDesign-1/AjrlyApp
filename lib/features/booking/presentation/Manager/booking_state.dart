part of 'booking_cubit.dart';

@immutable
sealed class BookingState {}

final class BookingInitial extends BookingState {}

final class BookingError extends BookingState {
  Failure failure;
  BookingError({required this.failure});
}

final class BookingLoading extends BookingState {}

final class BookingSuccess extends BookingState {
  final BookingEntities bookings;
  BookingSuccess({required this.bookings});
}
