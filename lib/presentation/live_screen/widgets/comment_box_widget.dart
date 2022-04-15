import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

class CommentBoxWidget extends StatelessWidget {
  const CommentBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.orange2,
          width: 1,
        ),
      ),
    );
  }
}
