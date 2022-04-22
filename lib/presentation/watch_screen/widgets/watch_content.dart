import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class WatchContent extends StatelessWidget {
  String content;

  WatchContent(this.content);

  var img_url1 =
      'https://d3vhc53cl8e8km.cloudfront.net/hello-staging/wp-content/uploads/2021/10/04192921/RhDHmJRtoRr6mHqNSemP07MjfMpu60zde1uSEsCQ.jpeg';
  String img_url2 =
      'https://media.insider.in/image/upload/c_crop,g_custom/v1630305558/y3vzwe47illwoi4bpvu9.jpg';
  String img_url3 =
      'https://res.cloudinary.com/dwzmsvp7f/image/fetch/q_75,f_auto,w_1316/https%3A%2F%2Fmedia.insider.in%2Fimage%2Fupload%2Fc_crop%2Cg_custom%2Fv1582882035%2Fzz37gogm26k48ibvnpb4.jpg';
  int lenght = 10;

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
              itemCount: lenght,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(
                      index == 0 ? 18 : 0, 0, index == lenght - 1 ? 0 : 20, 0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: CachedNetworkImage(
                          imageUrl: content == 'Live'
                              ? img_url1
                              : (content == 'Current' ? img_url2 : img_url3),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Caroline Kennedy',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: AppColors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Wembley Stadium',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Spacer(),
                                    Row(children: [
                                      Text(
                                        'Music',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 10,
                                        color: AppColors.white,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'Dance',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 10,
                                        color: AppColors.white,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'Fun',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundImage:
                                          AssetImage('images/avt.jpg'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Alexander Maria Laporta',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
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
                );
              }),
        )
      ],
    );
  }
}
