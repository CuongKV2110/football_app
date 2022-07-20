import 'package:music_app/presentation/holland_screen/models/holland.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import 'apis.dart';
part 'api_holland.g.dart';

@RestApi(baseUrl: "http://117.4.243.193:8084/api/guide/")
abstract class ApiHolland {
  factory ApiHolland(Dio dio, {String baseUrl}) = _ApiHolland;

  @GET(Apis.holland)
  Future<Holland> getData();
}
