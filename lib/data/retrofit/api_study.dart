import 'package:music_app/presentation/study_screen/models/category.dart';
import 'package:music_app/presentation/study_screen/models/objects.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import '../../presentation/study_screen/models/category_request.dart';
import '../../presentation/study_screen/models/object_request.dart';
import 'apis.dart';
part 'api_study.g.dart';

@RestApi(baseUrl: "http://117.4.243.193:8084/api/guide/")
abstract class ApiStudy {
  factory ApiStudy(Dio dio, {String baseUrl}) = _ApiStudy;

  @GET(Apis.category)
  Future<Category> getDataCategory(@Queries() CategoryRequest param);

  @POST(Apis.object)
  Future<Objects> getDataObject(@Body() ObjectRequest body);
}
