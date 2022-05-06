import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class CommentDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 10,
          backgroundImage: CachedNetworkImageProvider(
              'https://cdn.vox-cdn.com/thumbor/9YomP2FLVbTYiyMG46vA0WrZF3o=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/23294514/1380809015.jpg'),
        ),
        const SizedBox(
          width: 6,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jurgen Kloop',
                style: TextStyle(
                  color: AppColors.gray,
                  fontSize: 10,
                  letterSpacing: 0.8,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Liverpool will winner in C1 2022',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 12,
                  letterSpacing: 0.4,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    '5 hours ago',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Replie',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Column(
          children: const [
            Icon(
              Icons.favorite_outline,
              color: AppColors.gray,
              size: 16,
            ),
            Text(
              '324',
              style: TextStyle(color: AppColors.gray),
            )
          ],
        )
      ],
    );
  }
}
