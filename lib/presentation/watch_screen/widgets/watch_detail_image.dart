import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class WatchDetailImage extends StatelessWidget {
  String img_url =
      'https://d3vhc53cl8e8km.cloudfront.net/hello-staging/wp-content/uploads/2021/10/04192921/RhDHmJRtoRr6mHqNSemP07MjfMpu60zde1uSEsCQ.jpeg';

  String text1 =
      'My trip to HongKong is very well. I stayed in famous hotel  5 star. Manager is called me but I dont care';

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Positioned(
          bottom: 0,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
              child: _buildWatchInfo(),
            ),
            width: AppDimensions.d100w,
            height: AppDimensions.d20h,
            decoration: BoxDecoration(
              color: AppColors.black1.withOpacity(0.6),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWatchInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        const Text(
          'Robert Lewandowski',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Text(
          text1,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 14,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(
              Icons.timer_outlined,
              color: AppColors.white,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Started 30 min ago',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 13,
              ),
            )
          ],
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Elida Baldo',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 13,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.orange1,
                        AppColors.orange2,
                      ])),
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              '40 min',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 13,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.orange1,
                        AppColors.orange2,
                      ])),
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              'London',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 13,
              ),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
