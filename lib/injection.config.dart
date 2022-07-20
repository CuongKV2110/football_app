// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/repositories/event_repository.dart' as _i3;
import 'domain/repositories/holland_repository.dart' as _i5;
import 'domain/repositories/study_repositories.dart' as _i10;
import 'domain/usecases/event_usecases.dart' as _i4;
import 'domain/usecases/holland_usecase.dart' as _i6;
import 'domain/usecases/study_usecases.dart' as _i11;
import 'presentation/event_screen/bloc/event_bloc.dart' as _i13;
import 'presentation/holland_screen/bloc/holland_bloc.dart' as _i14;
import 'presentation/home_screen/bloc/home_bloc.dart' as _i7;
import 'presentation/shop_screen/bloc/shop_bloc.dart' as _i8;
import 'presentation/sign_in_screen/bloc/sign_in_bloc.dart' as _i9;
import 'presentation/study_screen/bloc/study_bloc/study_bloc.dart' as _i15;
import 'presentation/watch_screen/bloc/watch_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.EventRepository>(() => _i3.EventRepository());
  gh.factory<_i4.EventUsecases>(
      () => _i4.EventUsecases(get<_i3.EventRepository>()));
  gh.factory<_i5.HollandRepository>(() => _i5.HollandRepository());
  gh.factory<_i6.HollandUsecase>(
      () => _i6.HollandUsecase(get<_i5.HollandRepository>()));
  gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc());
  gh.factory<_i8.ShopBloc>(() => _i8.ShopBloc());
  gh.factory<_i9.SignInBloc>(() => _i9.SignInBloc());
  gh.factory<_i10.StudyRepository>(() => _i10.StudyRepository());
  gh.factory<_i11.StudyUseCase>(
      () => _i11.StudyUseCase(get<_i10.StudyRepository>()));
  gh.factory<_i12.WatchBloc>(() => _i12.WatchBloc());
  gh.factory<_i13.EventBloc>(() => _i13.EventBloc(get<_i4.EventUsecases>()));
  gh.factory<_i14.HollandBloc>(
      () => _i14.HollandBloc(get<_i6.HollandUsecase>()));
  gh.factory<_i15.StudyBloc>(() => _i15.StudyBloc(get<_i11.StudyUseCase>()));
  return get;
}
