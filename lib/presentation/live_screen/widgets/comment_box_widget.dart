import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/presentation/live_screen/widgets/interactive_widget.dart';

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
      child: Row(
        children: const [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write comment',
                  hintStyle: TextStyle(
                    color: AppColors.gray,
                    fontSize: 16,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Ionicons.at_circle_outline,
            color: AppColors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Ionicons.happy_outline,
            color: AppColors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
