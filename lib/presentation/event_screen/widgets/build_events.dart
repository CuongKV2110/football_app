import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/data/resources/dimensions.dart';
import 'package:music_app/presentation/home_screen/pages/home_detail_screen.dart';
import '../../widgets/build_user.dart';

class BuildEvents extends StatefulWidget {
  const BuildEvents({Key? key}) : super(key: key);

  @override
  _BuildEventsState createState() => _BuildEventsState();
}

class _BuildEventsState extends State<BuildEvents> {
  final ScrollController _controller = ScrollController();
  final List<String> imagesList = [
    'https://static-images.vnncdn.net/files/publish/real-madrid-vs-liverpool-la-man-tai-hien-tran-chung-ket-champions-league-201718-de5a206009fa4d2fb3e7725a314aec30.jpg',
    'https://static.bongda24h.vn/medias/standard/2022/4/16/ket-qua-man-city-vs-liverpool-fa-cup-hom-nay.jpg',
    'https://vnn-imgs-f.vgcloud.vn/2022/03/20/14/real-vs-barca.jpg',
    'https://cdn.bongdaplus.vn/Assets/Media/2021/11/06/62/ac-milan-vs-inter-milan-nhan-dinh.jpg',
    'https://static.bongda24h.vn/medias/original/2021/3/3/Bayern-Munich-vs-Borussia-Dortmund-(00h30-ngay-073)-hinh-anh.jpg',
    'https://static.bongda24h.vn/medias/standard/2022/4/28/mu-vs-chelsea-ngoai-hang-anh.jpg',
    'https://static.bongda24h.vn/medias/standard/2021/9/26/arsenal-tottenham-link-xem-premier-league-26-9-2021.jpg',
  ];

  String string1 =
      'My trip to China started Bejing, where I stayed in a beautiful hotel calledbut i not call repeat because i busy';

  @override
  void initState() {
    _controller.addListener(handleScrolling);
    super.initState();
  }

  void handleScrolling() async {
    if (_controller.position.maxScrollExtent == _controller.offset) {
      await Future.delayed(const Duration(milliseconds: 500));
      setState(
        () {
          imagesList.add(
            'https://static.bongda24h.vn/medias/standard/2021/11/20/085558-chelsea.jpg',
          );
          imagesList.add(
            'https://file3.qdnd.vn/data/images/0/2022/04/27/huutruong/liverpool%20vs%20villarreal.jpg?dpi=150&quality=100&w=870',
          );
          imagesList.add(
            'https://static.bongda24h.vn/medias/standard/2022/4/12/real-madird-vs-chelsea-kqbd-cup-c1-2022.jpg',
          );
          imagesList.add(
            'https://media.vov.vn/sites/default/files/styles/large/public/2022-04/truc_tiep_man_city_vs_real_madrid.jpg',
          );
          imagesList.add(
            'https://imagethumb.techz.vn/thumbamp/media2019/upload2019_amp/2022/03/05/thumbb-truc-tiep-man-city-vs-mu_05032022233630.jpg',
          );
          imagesList.add(
            'https://static.bongda24h.vn/medias/standard/2021/8/22/soi-keo-arsenal-vs-chelsea-ngoai-hang-anh-hom-nay.jpg',
          );
          imagesList.add(
            'https://static.bongda24h.vn/medias/standard/2022/5/6/soi-keo-atletico-vs-real-madrid-hom-nay.jpg',
          );
          imagesList.add(
            'https://static.bongda24h.vn/medias/original/2022/4/13/atletico-madrid-vs-man-city-dem-nay.jpg',
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _controller.removeListener(handleScrolling);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _controller,
      itemCount: imagesList.length,
      padding: const EdgeInsets.only(bottom: 50),
      itemBuilder: (_, index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeDetailScreen(imagesList[index]);
                    },
                  ),
                );
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl: imagesList[index],
                      width: AppDimensions.d90w,
                      height: AppDimensions.d40h,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      width: 56,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '15',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.black1,
                                fontSize: 24,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Sep',
                                style: TextStyle(
                                  color: AppColors.black1,
                                  fontSize: 24,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 10, 34, 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                              child: Text(
                                'Caroline Kennedy',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                string1,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: BuildUser(),
                            ),
                          ],
                        ),
                      ),
                      height: AppDimensions.d38w,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              AppColors.black1,
                              AppColors.black3.withOpacity(0.8),
                              AppColors.black3.withOpacity(0.6),
                            ]),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            if (index == imagesList.length - 1)
              const CircularProgressIndicator()
          ],
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 40),
    );
  }
}
