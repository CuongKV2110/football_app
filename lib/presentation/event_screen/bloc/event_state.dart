import '../../../data/models/animal.dart';

abstract class EventState {
  final List<String> data;
  EventState({required this.data});
}

class EventInitial extends EventState {
  EventInitial() : super(data: []);
}

class EventLoading extends EventState {
  EventLoading() : super(data: []);
}

class EventLoaded extends EventState {
  EventLoaded({required List<String> data}) : super(data: data);
}

class EventError extends EventState {
  final String error;
  EventError({required this.error}) : super(data: []);
}
