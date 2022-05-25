import 'package:flutter_bloc/flutter_bloc.dart';

import 'watch_state.dart';

class WatchBloc extends Cubit<WatchState> {
  WatchBloc() : super(WatchInitial());
  final List<String> list = [
    'https://kinhtechungkhoan.vn/stores/news_dataimages/xuanhoang/022022/27/17/2006_chelsea.jpg?rt=20220227172008',
    'https://static.bongda24h.vn/medias/standard/2021/11/28/man-city.jpg',
    'https://i1.wp.com/9sportpro.com/wp-content/uploads/2018/05/real-madrid-liverpool-1414002647-optimised.png?resize=672%2C345&ssl=1',
    'https://static.bongda24h.vn/medias/standard/2022/4/26/truc-tiep-cup-c1-man-city-real-madrid-link-xem-champions-league-27-4-2022.jpg',
    'https://cdn2.mediotiempo.com/uploads/media/2022/04/27/liverpool-vs-villarreal-semifinales-champions.jpg',
    'https://phantom-marca.unidadeditorial.es/f9a75bc808e16fb2136e400d3d5adf99/resize/1320/f/jpg/assets/multimedia/imagenes/2022/04/12/16497164410384.jpg',
    'https://static.bongda24h.vn/medias/standard/2022/3/9/link-xem-real-madrid-vs-psg-cup-c1-2022.jpg',
  ];

  Future<void> getData() async {
    emit(WatchLoading());
    await Future.delayed(
      const Duration(seconds: 2),
    );
    print('BBB');
    List<String> newList = list;
    emit(WatchLoaded(data: newList));
  }
}
