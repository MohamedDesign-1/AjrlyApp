part of 'booking_cubit.dart';

@immutable
sealed class BookingState {}

final class BookingInitial extends BookingState {}

final class BookingLoading extends BookingState {}

final class BookingSuccess extends BookingState {
  final BookingEntities bookings;
  BookingSuccess({required this.bookings});
}

final class BookingError extends BookingState {
  final Failure failure;
  BookingError({required this.failure});
}

final class BookingCancelled extends BookingState {
  final String message;
  BookingCancelled({required this.message});
}

final class BookingDetailsLoading extends BookingState {}

final class BookingDetailsSuccess extends BookingState {
  final BookingDataEntities bookingDetails;
  BookingDetailsSuccess({required this.bookingDetails});
}

final class BookingDetailsError extends BookingState {
  final Failure failure;
  BookingDetailsError({required this.failure});
}

final class BookingEmpty extends BookingState {}
