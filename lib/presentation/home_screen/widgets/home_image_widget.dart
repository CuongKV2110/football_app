import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

import '../../../data/resources/dimensions.dart';

class HomeImageWidget extends StatelessWidget {
  String img_url =
      'https://afamilycdn.com/Tnk9vRlUgEMOa9xiFyoQdi0bvg9Omj/Image/2012/08/120905phim1-feb54.jpg';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          ),
          child: CachedNetworkImage(
            imageUrl: img_url,
            height: AppDimensions.d45h,
            width: AppDimensions.d100w,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 30,
          child: Container(
            width: AppDimensions.d60w,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppColors.black2.withOpacity(0.7),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Day',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '06',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: AppColors.white,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hrs',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '25',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: AppColors.white,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Min',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '18',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
