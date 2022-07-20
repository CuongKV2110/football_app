import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class InfoWidget extends StatelessWidget {
  int index;
  String img;

  InfoWidget(this.index, this.img);

  String img_url1 =
      'https://cdn.vox-cdn.com/thumbor/9YomP2FLVbTYiyMG46vA0WrZF3o=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/23294514/1380809015.jpg';
  String img_url2 =
      'https://www.si.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTg0NzI0MjgwMjIyMTY0NDU1/pjimage-47.jpg';
  String img_url3 =
      'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/10/30/969136/Cristiano-Ronaldo4.jpg';
  String img_url4 =
      'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/10/30/969136/Cristiano-Ronaldo4.jpg';
  String img_url5 =
      'https://www.sportscordon.com/wp-content/uploads/2021/03/3019974-61955208-2560-1440.jpg';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: CachedNetworkImageProvider(img),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              index == 0
                  ? 'Kai Havertz'
                  : (index == 1
                      ? 'Mason Mount'
                      : (index == 2
                          ? 'Cristiano Ronaldo'
                          : (index == 3
                              ? "Lionel Messi"
                              : "Robert Lewandowski"))),
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Football Player',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 9,
                letterSpacing: 1.6,
              ),
            )
          ],
        ),
      ],
    );
  }
}
