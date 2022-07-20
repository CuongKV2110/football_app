import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class BuildContent extends StatelessWidget {
  String content;

  BuildContent(this.content);

  final List<String> imagesList1 = [
    'https://trangthi.net/wp-content/uploads/2020/01/trang-thi-media-malaysia-singapore-tour.jpeg',
    'https://visabaongoc.com/wp-content/uploads/2017/12/dich-vu-lam-visa-dubai-cong-tac-gia-re.jpg',
    'https://i.pinimg.com/originals/bc/b9/b2/bcb9b2c63242c484ad0eba092cd44808.jpg',
    'https://a0.muscache.com/pictures/ed2bfb87-1fd0-41f4-b5ad-d73792ee435e.jpg',
    'https://vcdn-vnexpress.vnecdn.net/2020/06/19/shutterstock-1094901527-8844-1592529452.jpg',
    'https://64.media.tumblr.com/3929e6074c8b4285e8a8b8e809fc5e74/tumblr_ndparehXaA1sjl3qko1_1280.jpg',
    'https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/05_2019/new-york.jpg',
    'https://manager.airline24h.com/Upload/images/da%20nang%2014.jpg',
    'https://images.unsplash.com/photo-1624253321171-1be53e12f5f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8amFwb258ZW58MHx8MHx8&w=1000&q=80',
  ];

  final List<String> imagesList2 = [
    'https://suckhoedoisong.qltns.mediacdn.vn/Images/thanhloan/2020/12/02/Ha-noi-quyet-tam-phuc-hoi-phat-trien-kinh-te-khong-de-bung-phat-lan-song-dich-covid-19-thu-3-3.jpg',
    'https://cdnimgen.vietnamplus.vn/uploaded/wbxx/2021_11_22/ho_chi_minh_city_tourism_opening.jpg',
    'https://kenh14cdn.com/thumb_w/660/2020/7/12/1-15945306107271103537154.jpg',
    'https://vcdn-vnexpress.vnecdn.net/2022/02/19/sai-gon-vang-ve-2-2335-1645262792.jpg',
    'https://canhosg.vn/wp-content/uploads/2020/10/van-phong-cho-thue-toa-nha-landmark-81-ngan-han-va-dai-han-co-office-vinhomes-1.jpg',
    'https://nemtv.vn/wp-content/uploads/2019/01/chua-mot-cot-ha-noi-ha-noi.jpg',
    'https://haiphong.gov.vn/upload/haiphong/product/2020/10-2020/Hai-Phong-no-luc-doi-moi-53744.jpg',
    'http://lienhehotro.vn/wp-content/uploads/2021/09/Thanh-Pho-Da-Nang.jpg',
    'https://i0.wp.com/www.agoda.com/wp-content/uploads/2020/06/Da-Nang-City-Centre-Where-to-stay-in-Da-Nang-Vietnam.jpg?ssl=1',
  ];
  final List<String> imagesList3 = [
    'https://i0.wp.com/onedayitinerary.com/wp-content/uploads/2019/02/One-day-in-Shanghai-Itinerary.jpg?fit=800%2C600&ssl=1',
    'https://www.vietnambooking.com/wp-content/uploads/2018/11/dulich-nuoc-uc-6n5d-kham-pha-thanh-pho-sydney-melbourne-20112018-8.jpg',
    'https://i.ytimg.com/vi/9XmPEUIghSM/maxresdefault.jpg',
    'https://ruche.vn/storage/tin-tuc/mua-thu-han-quoc/3-diem-den/seoul.jpg',
    'https://booksandbao.com/wp-content/uploads/2019/02/jezael-melgoza-974061-unsplash-e1567602273865.jpg',
    'https://lp-cms-production.imgix.net/2021-02/shutterstockRF_1347219839.jpg?auto=format&fit=crop&sharp=10&vib=20&ixlib=react-8.6.4&w=850',
    'http://a.files.bbci.co.uk/worldservice/live/assets/images/2015/07/01/150701180856_london_landmark_640x360_istock_nocredit.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                content == 'Stories'
                    ? 'Stories'
                    : (content == 'Trending' ? 'Trending ' : 'Recent Videos'),
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                ),
              ),
              const Spacer(),
              const Text(
                'See all',
                style: TextStyle(
                    color: AppColors.orange1,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: AppDimensions.d100w,
          height: content == 'Stories' ? 150 : 200,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: content == 'Stories'
                  ? imagesList1.length
                  : (content == 'Trending'
                      ? imagesList2.length
                      : imagesList3.length),
              itemBuilder: (context, index) {
                int lenght = content == 'Stories'
                    ? imagesList1.length
                    : (content == 'Trending'
                        ? imagesList2.length
                        : imagesList3.length);
                return Padding(
                  padding: EdgeInsets.fromLTRB(index == 0 ? 18 : 0, 0, 20, 0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: CachedNetworkImage(
                          imageUrl: content == 'Stories'
                              ? imagesList1[index]
                              : (content == 'Trending'
                                  ? imagesList2[index]
                                  : imagesList3[index]),
                          width: content == 'Stories' ? 130 : 190,
                          height: content == 'Stories' ? 130 : 190,
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      Positioned(
                        bottom: content == 'Stories' ? 22 : 14,
                        right: 10,
                        child: Row(
                          children: [
                            Icon(
                              content == 'Stories'
                                  ? Icons.favorite
                                  : Icons.remove_red_eye,
                              color: AppColors.white,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              content == 'Stories' ? '15K' : '254K',
                              style: const TextStyle(color: AppColors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
