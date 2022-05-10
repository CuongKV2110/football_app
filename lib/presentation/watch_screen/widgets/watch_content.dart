import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/presentation/watch_screen/pages/watch_detail_screen.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';
import '../../widgets/build_user.dart';
import 'build_watch_time.dart';

class WatchContent extends StatelessWidget {
  String content;

  WatchContent(this.content);

  final List<String> _list = [
    'https://i1.wp.com/9sportpro.com/wp-content/uploads/2018/05/real-madrid-liverpool-1414002647-optimised.png?resize=672%2C345&ssl=1',
    'https://static.bongda24h.vn/medias/standard/2022/4/26/truc-tiep-cup-c1-man-city-real-madrid-link-xem-champions-league-27-4-2022.jpg',
    'https://cdn2.mediotiempo.com/uploads/media/2022/04/27/liverpool-vs-villarreal-semifinales-champions.jpg',
    'https://phantom-marca.unidadeditorial.es/f9a75bc808e16fb2136e400d3d5adf99/resize/1320/f/jpg/assets/multimedia/imagenes/2022/04/12/16497164410384.jpg',
    'https://static.bongda24h.vn/medias/standard/2022/3/9/link-xem-real-madrid-vs-psg-cup-c1-2022.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                content == 'Live'
                    ? 'Live Events for you'
                    : (content == 'Current'
                        ? 'Your Current Event'
                        : 'Followers Event'),
                style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: AppDimensions.d100w,
          height: AppDimensions.d30h,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(index == 0 ? 18 : 0, 0,
                      index == _list.length - 1 ? 0 : 20, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return WatchDetailScreen(_list[index]);
                          },
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          child: CachedNetworkImage(
                            imageUrl: _list[index],
                            width: AppDimensions.d80w,
                            height: AppDimensions.d30h,
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        Positioned(
                            top: 10,
                            left: 10,
                            child: content == 'Live'
                                ? const Icon(
                                    Ionicons.radio,
                                    color: AppColors.white,
                                  )
                                : const SizedBox()),
                        const Positioned(
                          top: 10,
                          right: 10,
                          child: Icon(
                            Ionicons.ellipsis_vertical,
                            color: AppColors.white,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 6),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color: AppColors.white,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          'Wembley Stadium',
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const Spacer(),
                                        Row(children: [
                                          Text(
                                            content == 'Live'
                                                ? 'Music'
                                                : 'Athletic',
                                            style: const TextStyle(
                                              color: AppColors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Container(
                                            width: 1,
                                            height: 10,
                                            color: AppColors.white,
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            content == 'Live'
                                                ? 'Dance'
                                                : 'All Levels',
                                            style: const TextStyle(
                                              color: AppColors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          content == 'Live'
                                              ? Container(
                                                  width: 1,
                                                  height: 10,
                                                  color: AppColors.white,
                                                )
                                              : const SizedBox(),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            content == 'Live' ? 'Fun' : '',
                                            style: const TextStyle(
                                              color: AppColors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        BuildUser(),
                                        const Spacer(),
                                        content == 'Live'
                                            ? const SizedBox()
                                            : BuildWatchTime()
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
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
                                bottomRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                            ),
                            height: AppDimensions.d15h,
                            width: AppDimensions.d80w,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
