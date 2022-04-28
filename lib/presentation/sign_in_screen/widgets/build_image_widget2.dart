import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/data/resources/dimensions.dart';

class BuildImageWidget2 extends StatelessWidget {
  String img1_url =
      'https://thumbs.dreamstime.com/b/time-to-travel-vector-design-time-to-travel-text-empty-space-traveling-elements-time-to-travel-vector-design-time-to-194329728.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.elliptical(200, 150),
              bottomLeft: Radius.elliptical(40, 40)),
          child: CachedNetworkImage(
            imageUrl: img1_url,
            fit: BoxFit.fill,
            width: AppDimensions.d100w,
            height: AppDimensions.d30h,
          )),
    );
  }
}
