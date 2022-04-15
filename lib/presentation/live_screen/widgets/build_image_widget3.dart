import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class BuildImageWidget3 extends StatelessWidget {
  String img_url3 =
      'https://i.pinimg.com/564x/30/0b/d3/300bd3d66d1ddf1a79b95960dc4e13ec.jpg';

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img_url3,
      fit: BoxFit.fill,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
    );
  }
}
