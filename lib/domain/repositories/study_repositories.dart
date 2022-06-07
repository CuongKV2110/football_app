import 'package:dio/dio.dart';
import 'package:music_app/data/retrofit/api_study.dart';
import '../../presentation/study_screen/models/category_request.dart';
import '../../presentation/study_screen/models/object_request.dart';

class StudyRepository {
  final client = ApiStudy(Dio(BaseOptions(contentType: "application/json")));

  getDataCategory(CategoryRequest param) async {
    print('ABC');
    return await client.getDataCategory(param);
  }

  getDataObject(ObjectRequest body) async {
    return await client.getDataObject(body);
  }
}
