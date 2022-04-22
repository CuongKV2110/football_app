import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../data/resources/colors.dart';

class CommentDetailWidget extends StatelessWidget {
  const CommentDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Ionicons.chatbubble_ellipses_outline,
          color: AppColors.white,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          '683',
          style: TextStyle(color: AppColors.white, fontSize: 11),
        )
      ],
    );
  }
}
