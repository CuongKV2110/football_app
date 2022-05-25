import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/data/models/shop.dart';

import 'shop_state.dart';

class ShopBloc extends Cubit<ShopState> {
  ShopBloc() : super(ShopInitial());
  final List<Shop> list = [
    Shop(
      img1:
          'https://i.pinimg.com/736x/e3/af/24/e3af24414fb250041a4589a4148e9201.jpg',
      img2: 'https://kenhtinviet.com/uploads/2021/03/xja1616083736.jpg',
      img3:
          'https://i.pinimg.com/550x/ac/7f/f5/ac7ff52795234bc096f3a3f5614a2e88.jpg',
      content:
          'Havertz made his senior debut with the club at the same year. Upon making his debut, Havertz became the club\'s youngest-ever debutant ',
      isTym: false,
      isSave: false,
    ),
    Shop(
      img1:
          'https://cdn.bongdaplus.vn/Assets/Media/2021/05/18/77/Mason-Mount-xuat-sac-nhat-chelsea.jpg',
      img2:
          'https://localbrand.vn/wp-content/uploads/2021/07/cau-thu-dien-trai-mua-euro-masonmount-1.jpg',
      img3:
          'http://media.tinthethao.com.vn/files/bongda/2021/02/02/untitled9-1711png.png',
      content:
          'Chelsea matches including the one against Barnsley in the third round of the EFL Cup on 23 September, which ended in a 6–0 win at home',
      isTym: false,
      isSave: false,
    ),
    Shop(
      img1:
          'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/10/30/969136/Cristiano-Ronaldo4.jpg',
      img2:
          'https://znews-photo.zingcdn.me/w660/Uploaded/qxjrcqjwq/2020_04_09/d8pi64rxoau0ibx_15601238775481684274358.jpg',
      img3:
          'http://media.tinthethao.com.vn/files/bongda/2021/12/30/ronaldo-1057png.png',
      content:
          'Ronaldo made his international debut for Portugal in 2003 at the age of 18 and has since earned over 180 caps, making him Portugal',
      isTym: false,
      isSave: false,
    ),
  ];

  Future<void> getData() async {
    emit(ShopLoading());
    await Future.delayed(
      const Duration(seconds: 2),
    );
    List<Shop> newList = list;
    print(newList[0].content);
    emit(ShopLoaded(data: newList));
  }
}
