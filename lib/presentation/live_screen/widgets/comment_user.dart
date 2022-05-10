import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/models/comment.dart';

import '../../../data/resources/colors.dart';

class CommentUser extends StatefulWidget {
  Comment comment;

  CommentUser(this.comment);

  @override
  _CommentUserState createState() => _CommentUserState();
}

class _CommentUserState extends State<CommentUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 4, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: CachedNetworkImageProvider(widget.comment.avt),
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.comment.name,
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 12,
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.comment.comment,
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
                  children: [
                    Text(
                      widget.comment.time,
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
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Column(
              children: [
                Icon(
                  Icons.favorite_outline,
                  color:
                      widget.comment.isPress ? AppColors.red2 : AppColors.gray,
                  size: 20,
                ),
                Text(
                  widget.comment.tym.toString(),
                  style: TextStyle(
                    color: AppColors.gray,
                  ),
                )
              ],
            ),
            onTap: () {
              setState(() {
                widget.comment.isPress = !widget.comment.isPress;
              });
            },
          ),
        ],
      ),
    );
  }
}
