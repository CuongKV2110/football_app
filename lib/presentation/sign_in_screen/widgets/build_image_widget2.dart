import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class BuildImageWidget2 extends StatelessWidget {
  String img1_url = 'https://i.ytimg.com/vi/nsI4hIJsCvo/maxresdefault.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.elliptical(200, 150),
              bottomLeft: Radius.elliptical(40, 40)),
          child: CachedNetworkImage(imageUrl: img1_url)),
    );
  }
}
