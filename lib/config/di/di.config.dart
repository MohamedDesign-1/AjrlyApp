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
import '../../features/admins/admin_mainlay_out/presentation/manager/admin_main_lay_out_cubit.dart'
    as _i692;
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
import '../../features/auth/register_screen/data/data_sources/remote/impl/register_remote_data_source_impl.dart'
    as _i109;
import '../../features/auth/register_screen/data/data_sources/remote/register_remote_data_source.dart'
    as _i424;
import '../../features/auth/register_screen/data/repositories/register_repository_impl.dart'
    as _i563;
import '../../features/auth/register_screen/domain/repositories/register_repository.dart'
    as _i628;
import '../../features/auth/register_screen/domain/use_cases/register_use_case.dart'
    as _i359;
import '../../features/auth/register_screen/presentation/manager/register_cubit.dart'
    as _i593;
import '../../features/Home_Page/data/data_sources/remote/get_all_ads_remote_data_source.dart'
    as _i640;
import '../../features/Home_Page/data/data_sources/remote/impl/get_all_ads_remote_data_source_impl.dart'
    as _i715;
import '../../features/Home_Page/data/repositories/get_all_ads_repository_impl.dart'
    as _i802;
import '../../features/Home_Page/domain/repositories/get_all_ads_repositories.dart'
    as _i784;
import '../../features/Home_Page/domain/use_cases/get_ads_use_case.dart'
    as _i680;
import '../../features/Home_Page/presentation/manager/get_all_ads_cubit.dart'
    as _i113;
import '../../features/mainLayout/presentation/manager/main_layout_cubit.dart'
    as _i361;
import '../../features/profile/data/data_sources/remote/get_profile_data_remote_data_source.dart'
    as _i505;
import '../../features/profile/data/data_sources/remote/impl/get_profile_data_remote_data_source_impl.dart'
    as _i200;
import '../../features/profile/data/repositories/get_profile_data_repository_impl.dart'
    as _i861;
import '../../features/profile/domain/repositories/get_profile_data_repository.dart'
    as _i353;
import '../../features/profile/domain/use_cases/get_profile_data_use_case.dart'
    as _i238;
import '../../features/profile/presentation/manager/profile_cubit.dart'
    as _i735;

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
    gh.factory<_i692.AdminMainLayOutCubit>(() => _i692.AdminMainLayOutCubit());
    gh.singleton<_i1057.ApiManager>(() => _i1057.ApiManager());
    gh.factory<_i505.GetProfileDataRemoteDataSource>(() =>
        _i200.GetProfileDataRemoteDataSourceImpl(
            apiManager: gh<_i1057.ApiManager>()));
    gh.factory<_i424.RegisterRemoteDataSource>(() =>
        _i109.RegisterRemoteDataSourceImpl(apiManger: gh<_i1057.ApiManager>()));
    gh.factory<_i353.GetProfileDataRepository>(() =>
        _i861.GetProfileDataRepositoryImpl(
            getProfileDataRemoteDataSource:
                gh<_i505.GetProfileDataRemoteDataSource>()));
    gh.factory<_i628.RegisterRepository>(() => _i563.RegisterRepositoryImpl(
        registerRemoteDataSource: gh<_i424.RegisterRemoteDataSource>()));
    gh.factory<_i640.GetAllAdsRemoteDataSource>(() =>
        _i715.GetAllAdsRemoteDataSourceImpl(
            apiManager: gh<_i1057.ApiManager>()));
    gh.factory<_i1069.LoginRemoteDataSource>(() =>
        _i508.LoginRemoteDataSourceImpl(apiManger: gh<_i1057.ApiManager>()));
    gh.factory<_i806.LoginRepository>(() => _i530.LoginRepositoryImpl(
        loginRemoteDataSource: gh<_i1069.LoginRemoteDataSource>()));
    gh.factory<_i299.LoginUseCase>(
        () => _i299.LoginUseCase(loginRepository: gh<_i806.LoginRepository>()));
    gh.factory<_i238.GetProfileDataUseCase>(() => _i238.GetProfileDataUseCase(
        getProfileDataRepository: gh<_i353.GetProfileDataRepository>()));
    gh.factory<_i735.ProfileCubit>(() => _i735.ProfileCubit(
        getProfileDataUseCase: gh<_i238.GetProfileDataUseCase>()));
    gh.factory<_i784.GetAllAdsRepositories>(() =>
        _i802.GetAllAdsRepositoriesImpl(
            getAllAdsRemoteDataSource: gh<_i640.GetAllAdsRemoteDataSource>()));
    gh.factory<_i680.GetAdsUseCase>(() => _i680.GetAdsUseCase(
        getAllAdsRepositories: gh<_i784.GetAllAdsRepositories>()));
    gh.factory<_i359.RegisterUseCase>(() => _i359.RegisterUseCase(
        registerRepository: gh<_i628.RegisterRepository>()));
    gh.factory<_i113.GetAllAdsCubit>(
        () => _i113.GetAllAdsCubit(gh<_i680.GetAdsUseCase>()));
    gh.factory<_i540.LoginCubit>(
        () => _i540.LoginCubit(loginUseCase: gh<_i299.LoginUseCase>()));
    gh.factory<_i593.RegisterCubit>(() =>
        _i593.RegisterCubit(registerUseCase: gh<_i359.RegisterUseCase>()));
    return this;
  }
}
