import 'package:dio/dio.dart';
import 'package:music_app/data/models/animal.dart';
import 'package:music_app/data/models/event_model.dart';
import 'package:music_app/data/retrofit/api_event.dart';

class EventRepository {
  final client = ApiEvent(Dio(BaseOptions(contentType: "application/json")));
  Future<List<Animal>> getData() async {
    return await client.getData();
  }
}
