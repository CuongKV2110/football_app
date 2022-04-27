import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

import '../../../data/resources/dimensions.dart';

class BuildTrending extends StatefulWidget {
  const BuildTrending({Key? key}) : super(key: key);

  @override
  _BuildTrendingState createState() => _BuildTrendingState();
}

class _BuildTrendingState extends State<BuildTrending> {
  String img_url1 =
      'https://i1.sndcdn.com/artworks-000196486771-5o0cjx-t500x500.jpg';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.d100w,
      height: 200,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: index == 4 ? 0 : 20),
              child: Stack(
                children: [
                  ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl: img_url1,
                      width: AppDimensions.d40w,
                      height: 190,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  Positioned(
                    bottom: 14,
                    right: 10,
                    child: Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye,
                          color: AppColors.white,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '372K',
                          style: TextStyle(color: AppColors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
