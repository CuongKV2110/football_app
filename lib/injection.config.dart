// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/repositories/event_repository.dart' as _i3;
import 'domain/repositories/study_repositories.dart' as _i8;
import 'domain/usecases/event_usecases.dart' as _i4;
import 'domain/usecases/study_usecases.dart' as _i9;
import 'presentation/event_screen/bloc/event_bloc.dart' as _i12;
import 'presentation/home_screen/bloc/home_bloc.dart' as _i5;
import 'presentation/shop_screen/bloc/shop_bloc.dart' as _i6;
import 'presentation/sign_in_screen/bloc/sign_in_bloc.dart' as _i7;
import 'presentation/study_screen/bloc/category_bloc/category_bloc.dart'
    as _i11;
import 'presentation/study_screen/bloc/object_bloc/object_bloc.dart' as _i13;
import 'presentation/watch_screen/bloc/watch_bloc.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.EventRepository>(() => _i3.EventRepository());
  gh.factory<_i4.EventUsecases>(
      () => _i4.EventUsecases(get<_i3.EventRepository>()));
  gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc());
  gh.factory<_i6.ShopBloc>(() => _i6.ShopBloc());
  gh.factory<_i7.SignInBloc>(() => _i7.SignInBloc());
  gh.factory<_i8.StudyRepository>(() => _i8.StudyRepository());
  gh.factory<_i9.StudyUseCase>(
      () => _i9.StudyUseCase(get<_i8.StudyRepository>()));
  gh.factory<_i10.WatchBloc>(() => _i10.WatchBloc());
  gh.factory<_i11.CategoryBloc>(
      () => _i11.CategoryBloc(get<_i9.StudyUseCase>()));
  gh.factory<_i12.EventBloc>(() => _i12.EventBloc(get<_i4.EventUsecases>()));
  gh.factory<_i13.ObjectBloc>(() => _i13.ObjectBloc(get<_i9.StudyUseCase>()));
  return get;
}
