import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import 'comment_favorite.dart';

class CommentUser extends StatelessWidget {
  const CommentUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 4, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 16,
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
                const Text(
                  'Jurgen Kloop',
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 12,
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Liverpool will winner in C1 2022',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 14,
                    letterSpacing: 0.4,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: const [
                    Text(
                      '7 hours ago',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Replie',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const CommentFavorite(),
        ],
      ),
    );
  }
}
