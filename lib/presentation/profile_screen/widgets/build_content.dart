import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class BuildContent extends StatelessWidget {
  String content;
  BuildContent(this.content);
  var img_url1 =
      'https://www.winnmediaskn.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-14-at-8.22.36-AM-696x928.jpeg';
  String img_url2 =
      'https://i1.sndcdn.com/artworks-000196486771-5o0cjx-t500x500.jpg';
  String img_url3 = 'https://pbs.twimg.com/media/EbUlnUZWAAEYsDS.jpg';
  int lenght = 10;
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
              itemCount: lenght,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(
                      index == 0 ? 18 : 0, 0, index == lenght - 1 ? 0 : 10, 0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: CachedNetworkImage(
                          imageUrl: content == 'Stories'
                              ? img_url1
                              : (content == 'Trending' ? img_url2 : img_url3),
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
