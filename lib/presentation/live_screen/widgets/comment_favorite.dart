import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class CommentFavorite extends StatelessWidget {
  const CommentFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.favorite_outline,
          color: AppColors.gray,
          size: 20,
        ),
        Text(
          '8135',
          style: TextStyle(color: AppColors.gray),
        )
      ],
    );
  }
}
