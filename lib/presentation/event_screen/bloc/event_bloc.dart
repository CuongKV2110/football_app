import 'package:bloc/bloc.dart';
import 'package:music_app/data/models/animal.dart';
import 'package:music_app/data/models/event_model.dart';
import 'package:music_app/domain/usecases/event_usecases.dart';
import 'event_state.dart';

class EventBloc extends Cubit<EventState> {
  EventBloc(this.eventUsecases) : super(EventInitial());
  EventUsecases eventUsecases;

  late String _keyword;

  void initial(String keyword) {
    _keyword = keyword;
  }

  Future<void> getData() async {
    emit(EventLoading());

    List<Animal> _list = await eventUsecases.getData();
    print(_list.length);

    List<Animal> data = [];
    data.addAll(_list);
    emit(EventLoaded(data: data));
  }

  void refreshData() async {
    getData();
  }

  void loadMore() async {
    print('Load more');
    List<Animal> _list = await eventUsecases.getData();
    state.data.addAll([..._list]);
    emit(EventLoaded(data: state.data));
  }

  void dispose() {
    close();
  }
}
