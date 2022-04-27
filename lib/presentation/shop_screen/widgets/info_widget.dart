import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class InfoWidget extends StatelessWidget {
  int index;

  InfoWidget(this.index);

  String img_url1 =
      'https://cdn.vox-cdn.com/thumbor/9YomP2FLVbTYiyMG46vA0WrZF3o=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/23294514/1380809015.jpg';
  String img_url2 =
      'https://www.si.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTg0NzI0MjgwMjIyMTY0NDU1/pjimage-47.jpg';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage:
              CachedNetworkImageProvider(index % 2 == 0 ? img_url1 : img_url2),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              index % 2 == 0 ? 'Kai Havertz' : 'Mason Mount',
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
