import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:music_app/data/retrofit/api_event.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.registerLazySingleton<ApiEvent>(() =>
      ApiEvent(getIt(), baseUrl: 'https://jsonplaceholder.typicode.com/'));
  $initGetIt(getIt);
}
