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
    Shop(
      img1:
          'https://danviet.mediacdn.vn/thumb_w/650/296231569849192448/2022/1/2/messi-01-16411338742681563076274.jpg',
      img2:
          'https://photo-cms-sggp.zadn.vn/Uploaded/2022/dqmbbcvo/2022_06_06/lionelmessi1_wpcl.jpg',
      img3:
          'https://img.nhandan.com.vn/Files/Images/2021/07/10/a1-1625891353039.jpg',
      content:
          'Lionel Andrés Messi born 24 June 1987, also known as Leo Messi, is an Argentine professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and captains the Argentina national team',
      isTym: false,
      isSave: false,
    ),
    Shop(
      img1:
          'https://cdn.vovlive.vn/2022/07/17/image.vtc.vn-upload-2022-07-17-_b5c14d3e-fabe-4edc-883f-bdf2d0877fb5alta-libre-aspect-ratiodefault0-06394597.jpeg',
      img2:
          'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltf2dfa4c811059291/626501119dbd354aa8fc4295/Lewandowski.jpg?auto=webp&format=jpg&quality=60&width=1280',
      img3:
          'https://photo-cms-plo.zadn.vn/w850/Uploaded/2022/kwvobciv/2022_06_16/lewan-bayern-2-6042.jpg',
      content:
          'Robert Lewandowski born 21 August 1988 is a Polish professional footballer who plays as a striker for Bundesliga club Bayern Munich and is the captain of the Poland national team',
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
