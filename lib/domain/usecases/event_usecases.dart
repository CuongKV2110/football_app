import 'package:injectable/injectable.dart';

import '../../data/models/animal.dart';
import '../../data/models/event_model.dart';
import '../repositories/event_repository.dart';

@injectable
class EventUsecases {
  EventRepository _eventRepository;

  EventUsecases(this._eventRepository);

  Future<List<Animal>> getData() async {
    return await _eventRepository.getData();
  }
}
