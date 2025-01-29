part of 'get_all_ads_cubit.dart';

@immutable
sealed class GetAllAdsState {}

final class GetAllAdsInitial extends GetAllAdsState {}

final class GetAllAdsLoading extends GetAllAdsState {}

final class GetAllAdsError extends GetAllAdsState {
  final Failure failure;
  GetAllAdsError({required this.failure});
}

final class GetAllAdsSuccess extends GetAllAdsState {
  final List<GetAllAdsEntity> getAllAds;
  GetAllAdsSuccess({required this.getAllAds});
}