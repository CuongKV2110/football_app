import 'package:music_app/data/models/animal.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import 'apis.dart';
part 'api_event.g.dart';

@RestApi(baseUrl: "https://firebasestorage.googleapis.com/")
abstract class ApiEvent {
  factory ApiEvent(Dio dio, {String baseUrl}) = _ApiEvent;

  @GET(Apis.event)
  Future<List<Animal>> getData();
}
