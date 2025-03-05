import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/booking/domain/use_cases/get_booking_ads_usecase.dart';
import 'package:ajrly/features/booking/domain/use_cases/get_booking_details_usecase.dart';
import 'package:ajrly/features/booking/domain/use_cases/post_booking_usecase.dart';
import 'package:ajrly/features/booking/domain/use_cases/cancel_booking_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/booking_entities.dart';

part 'booking_state.dart';

@injectable
class BookingCubit extends Cubit<BookingState> {

  static BookingCubit get(context) => BlocProvider.of(context);

  final GetBookingAdsUseCase getBookingAdsUseCase;
  final GetBookingDetailsUseCase getBookingDetailsUseCase;
  final PostBookingUseCase postBookingUseCase;
  final CancelBookingUseCase cancelBookingUseCase;

  BookingCubit({
    required this.getBookingAdsUseCase,
    required this.getBookingDetailsUseCase,
    required this.postBookingUseCase,
    required this.cancelBookingUseCase,
  }) : super(BookingInitial());

  Future<void> fetchBookingAds() async {
    emit(BookingLoading());
    final result = await getBookingAdsUseCase();
    result.fold(
          (failure) => emit(BookingError(failure: failure)),
          (response) => emit(BookingSuccess(bookings: response)),
    );
  }

  Future<void> fetchBookingDetails() async {
    emit(BookingLoading());
    final result = await getBookingDetailsUseCase();
    result.fold(
          (failure) => emit(BookingError(failure: failure)),
          (response) => emit(BookingSuccess(bookings: response)),
    );
  }

  Future<void> createBooking() async {
    emit(BookingLoading());
    final result = await postBookingUseCase();
    result.fold(
          (failure) => emit(BookingError(failure: failure)),
          (response) => emit(BookingSuccess(bookings: response)),
    );
  }

  Future<void> cancelBooking() async {
    emit(BookingLoading());
    final result = await cancelBookingUseCase();
    result.fold(
          (failure) => emit(BookingError(failure: failure)),
          (response) => emit(BookingSuccess(bookings: response)),
    );
  }
}
