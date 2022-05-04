import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/data/resources/dimensions.dart';

import '../../../data/resources/colors.dart';
import 'build_comment.dart';

class CommentDetailWidget extends StatelessWidget {
  const CommentDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
            ),
            builder: (context) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      AppColors.black1,
                      AppColors.black3.withOpacity(0.7),
                    ],
                  ),
                ),
                child: BuildComment(),
              );
            });
      },
      child: Column(
        children: const [
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
      ),
    );
  }
}
