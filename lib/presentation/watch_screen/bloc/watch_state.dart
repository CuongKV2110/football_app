abstract class WatchState {
  final List<String> data;

  WatchState({required this.data});
}

class WatchInitial extends WatchState {
  WatchInitial() : super(data: []);
}

class WatchLoading extends WatchState {
  WatchLoading() : super(data: []);
}

class WatchLoaded extends WatchState {
  final List<String> data;

  WatchLoaded({required this.data}) : super(data: data);
}

class WatchError extends WatchState {
  final String error;

  WatchError({required this.error}) : super(data: []);
}
