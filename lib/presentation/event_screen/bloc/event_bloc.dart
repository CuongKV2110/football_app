import 'package:bloc/bloc.dart';
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
    final List<String> imageList1 = [
      'https://assets.skor.id/crop/0x0:0x0/x/photo/2022/03/17/1908760345.jpg',
      'https://cdnmedia.thethaovanhoa.vn/Upload/1ULa3urWs9Lc3ZdKw10L3Q/files/2022/03/1/4(3).jpg',
      'https://static.bongda24h.vn/medias/original/2022/5/12/imgpsh_fullsize_anim-9.jpg',
      'https://cdnimg.vietnamplus.vn/uploaded/tngztn/2014_05_24/realmadridvsatleticomadridchampionsleaguefinallisbon2014.jpg',
      'https://cdns.klimg.com/bola.net/library/upload/21/2021/02/tottenham-chelsea_b238424.jpg',
    ];

    emit(EventLoaded(data: imageList1));
  }

  void refreshData() async {
    getData();
  }

  void loadMore() async {
    print('Load more');
    List<String> _list = [
      'https://i1.wp.com/9sportpro.com/wp-content/uploads/2018/05/real-madrid-liverpool-1414002647-optimised.png?resize=672%2C345&ssl=1',
      'https://static.bongda24h.vn/medias/standard/2022/4/26/truc-tiep-cup-c1-man-city-real-madrid-link-xem-champions-league-27-4-2022.jpg',
      'https://cdn2.mediotiempo.com/uploads/media/2022/04/27/liverpool-vs-villarreal-semifinales-champions.jpg',
      'https://phantom-marca.unidadeditorial.es/f9a75bc808e16fb2136e400d3d5adf99/resize/1320/f/jpg/assets/multimedia/imagenes/2022/04/12/16497164410384.jpg',
      'https://static.bongda24h.vn/medias/standard/2022/3/9/link-xem-real-madrid-vs-psg-cup-c1-2022.jpg',
    ];
    state.data.addAll([..._list]);
    emit(EventLoaded(data: state.data));
  }

  void dispose() {
    close();
  }
}
