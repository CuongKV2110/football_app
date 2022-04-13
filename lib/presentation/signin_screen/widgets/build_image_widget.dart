import 'package:flutter/cupertino.dart';

class BuildImageWidget extends StatelessWidget {
  String img1 =
      'https://icdn.dantri.com.vn/thumb_w/770/2022/04/13/xequansungatienvedongukrainetelegram-1649821766945.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.elliptical(200, 150),
            bottomLeft: Radius.elliptical(40, 40)),
        child: Image.network(img1),
      ),
    );
  }
}
