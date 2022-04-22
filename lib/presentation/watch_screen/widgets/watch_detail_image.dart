import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class WatchDetailImage extends StatelessWidget {
  String img_url =
      'https://i.vietgiaitri.com/2021/6/20/cau-thu-kai-havertz-chuong-mac-do-streetwear-ngoai-doi-a82-5835715.jpg';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
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
            child: Icon(
              Icons.arrow_back,
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
  }
}
