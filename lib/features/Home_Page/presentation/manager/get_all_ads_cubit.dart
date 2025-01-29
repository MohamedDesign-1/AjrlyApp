import 'package:ajrly/features/Home_Page/domain/use_cases/get_ads_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/ads_entity.dart';

part 'get_all_ads_state.dart';

@injectable
class GetAllAdsCubit extends Cubit<GetAllAdsState> {
  GetAdsUseCase getAdsUseCase ;
  GetAllAdsCubit(this.getAdsUseCase) : super(GetAllAdsInitial());

  void getAllAds() async{
    emit(GetAllAdsLoading());
    var either = await getAdsUseCase.invoke();
    either.fold((failure) {
      emit(GetAllAdsError(failure: failure));
    }, (ads) {
      emit(GetAllAdsSuccess(getAllAds: ads));
    });
  }

}
