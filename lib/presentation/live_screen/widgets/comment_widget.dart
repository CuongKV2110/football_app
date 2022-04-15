import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class CommentDetailWidget extends StatelessWidget {
  const CommentDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.chat,
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
