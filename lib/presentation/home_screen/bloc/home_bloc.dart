import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(HomeInitial());

  final List<String> imageList1 = [
    'https://i1.wp.com/9sportpro.com/wp-content/uploads/2018/05/real-madrid-liverpool-1414002647-optimised.png?resize=672%2C345&ssl=1',
    'https://static.bongda24h.vn/medias/standard/2022/4/26/truc-tiep-cup-c1-man-city-real-madrid-link-xem-champions-league-27-4-2022.jpg',
    'https://cdn2.mediotiempo.com/uploads/media/2022/04/27/liverpool-vs-villarreal-semifinales-champions.jpg',
    'https://phantom-marca.unidadeditorial.es/f9a75bc808e16fb2136e400d3d5adf99/resize/1320/f/jpg/assets/multimedia/imagenes/2022/04/12/16497164410384.jpg',
    'https://static.bongda24h.vn/medias/standard/2022/3/9/link-xem-real-madrid-vs-psg-cup-c1-2022.jpg',
  ];

  final List<String> imageList2 = [
    'https://static-images.vnncdn.net/files/publish/real-madrid-vs-liverpool-la-man-tai-hien-tran-chung-ket-champions-league-201718-de5a206009fa4d2fb3e7725a314aec30.jpg',
    'https://static.bongda24h.vn/medias/standard/2022/4/16/ket-qua-man-city-vs-liverpool-fa-cup-hom-nay.jpg',
    'https://vnn-imgs-f.vgcloud.vn/2022/03/20/14/real-vs-barca.jpg',
    'https://cdn.bongdaplus.vn/Assets/Media/2021/11/06/62/ac-milan-vs-inter-milan-nhan-dinh.jpg',
    'https://static.bongda24h.vn/medias/original/2021/3/3/Bayern-Munich-vs-Borussia-Dortmund-(00h30-ngay-073)-hinh-anh.jpg',
    'https://static.bongda24h.vn/medias/standard/2022/4/28/mu-vs-chelsea-ngoai-hang-anh.jpg',
    'https://static.bongda24h.vn/medias/standard/2021/9/26/arsenal-tottenham-link-xem-premier-league-26-9-2021.jpg',
  ];

  final List<String> imageList3 = [
    'https://cdn.getyourguide.com/img/location/7489b3901d8c92a3.jpeg/99.jpg',
    'https://i.ytimg.com/vi/zUfcSONJfK0/maxresdefault.jpg',
    'https://lh3.googleusercontent.com/TPU-d2OsLC9odQJ5FRJWAbv5t4PsD8v1wMgq1bGg6FBL-0o3YyjNlpSL856hGKIgm15JfdYhxyfj8TIgnobZv0tGxQ=w640-h400-e365-rj-sc0x00ffffff',
    'https://www.fcbarcelona.com/photo-resources/2021/08/09/276ad270-e5c6-453d-8d9f-212417ad7cb3/Camp-Nou-3.jpg?width=1200&height=750',
    'https://i0.wp.com/au-stade.fr/wp-content/uploads/2020/02/20200218_205307-scaled.jpg?ssl=1',
    'https://kenh14cdn.com/thumb_w/660/203336854389633024/2022/2/23/manchester-city-recreates-the-etihad-stadium-in-the-world-of-16455528245001485558065.jpeg',
    'https://images.musement.com/cover/0019/16/arcadevr-header-1-jpg_header-1815725.jpeg',
  ];

  Future<void> getData() async {
    emit(HomeLoading());
    await Future.delayed(
      const Duration(seconds: 2),
    );
    List<String> list1 = imageList1;
    List<String> list2 = imageList2;
    List<String> list3 = imageList3;
    emit(HomeLoaded(list1, list2, list3));
  }
}
