import 'package:dio/dio.dart';

import 'package:music_app/data/retrofit/api_holland.dart';
import 'package:music_app/presentation/holland_screen/models/holland.dart';

class HollandRepository {
  final client = ApiHolland(Dio(BaseOptions(contentType: "application/json")));
  Future<Holland> getData() async {
    return await client.getData();
  }
}
