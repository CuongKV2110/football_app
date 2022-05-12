// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/repositories/event_repository.dart' as _i3;
import 'domain/repositories/sign_in_repository.dart' as _i6;
import 'domain/usecases/event_usecases.dart' as _i4;
import 'presentation/event_screen/bloc/event_bloc.dart' as _i7;
import 'presentation/sign_in_screen/bloc/sign_in_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.EventRepository>(() => _i3.EventRepository());
  gh.factory<_i4.EventUsecases>(
      () => _i4.EventUsecases(get<_i3.EventRepository>()));
  gh.factory<_i5.SignInBloc>(() => _i5.SignInBloc());
  gh.factory<_i6.SignInRepository>(
      () => _i6.SignInRepository(get<String>(), get<String>()));
  gh.factory<_i7.EventBloc>(() => _i7.EventBloc(get<_i4.EventUsecases>()));
  return get;
}
