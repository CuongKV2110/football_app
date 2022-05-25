abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<String> data1;
  final List<String> data2;
  final List<String> data3;

  HomeLoaded(this.data1, this.data2, this.data3);
}

class HomeError extends HomeState {}
