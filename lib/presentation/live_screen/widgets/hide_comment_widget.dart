import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class HideCommentWidget extends StatelessWidget {
  const HideCommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Hide comments',
          style: TextStyle(color: AppColors.gray),
        ),
        Icon(
          Icons.keyboard_arrow_down_outlined,
          color: AppColors.gray,
        )
      ],
    );
  }
}
