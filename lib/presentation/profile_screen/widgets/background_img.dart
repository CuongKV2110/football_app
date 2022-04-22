import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/dimensions.dart';

class BackgroundImage extends StatelessWidget {
  String img_url =
      'http://loopcentral.vn/uploads/thumbnail/591d77afd6380ff28805a6708144d9cf.jpg';

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: CachedNetworkImage(
        imageUrl: img_url,
        height: AppDimensions.d26h,
        width: AppDimensions.d100w,
        fit: BoxFit.fill,
      ),
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(24),
        bottomLeft: Radius.circular(24),
      ),
    );
  }
}
