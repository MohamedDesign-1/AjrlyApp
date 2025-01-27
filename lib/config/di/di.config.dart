// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../core/api/api_manager.dart' as _i1057;
import '../../features/auth/login_screen/data/data_sources/remote/impl/login_reomte_data_source_impl.dart'
    as _i508;
import '../../features/auth/login_screen/data/data_sources/remote/login_remote_data_source.dart'
    as _i1069;
import '../../features/auth/login_screen/data/repositories/login_repository_impl.dart'
    as _i530;
import '../../features/auth/login_screen/domain/repositories/login_repository.dart'
    as _i806;
import '../../features/auth/login_screen/domain/use_cases/login_use_case.dart'
    as _i299;
import '../../features/auth/login_screen/presentation/manager/login_cubit.dart'
    as _i540;
import '../../features/mainLayout/presentation/manager/main_layout_cubit.dart'
    as _i361;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i361.MainLayoutCubit>(() => _i361.MainLayoutCubit());
    gh.singleton<_i1057.ApiManager>(() => _i1057.ApiManager());
    gh.factory<_i1069.LoginRemoteDataSource>(() =>
        _i508.LoginRemoteDataSourceImpl(apiManger: gh<_i1057.ApiManager>()));
    gh.factory<_i806.LoginRepository>(() => _i530.LoginRepositoryImpl(
        loginRemoteDataSource: gh<_i1069.LoginRemoteDataSource>()));
    gh.factory<_i299.LoginUseCase>(
        () => _i299.LoginUseCase(loginRepository: gh<_i806.LoginRepository>()));
    gh.factory<_i540.LoginCubit>(
        () => _i540.LoginCubit(loginUseCase: gh<_i299.LoginUseCase>()));
    return this;
  }
}
