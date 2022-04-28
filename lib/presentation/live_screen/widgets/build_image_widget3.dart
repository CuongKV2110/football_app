import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class BuildImageWidget3 extends StatelessWidget {
  String img_url;

  BuildImageWidget3(this.img_url);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img_url,
      fit: BoxFit.fill,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
    );
  }
}
