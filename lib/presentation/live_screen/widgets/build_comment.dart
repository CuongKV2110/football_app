import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/data/resources/dimensions.dart';
import 'package:music_app/presentation/live_screen/widgets/comment.dart';
import 'package:music_app/presentation/live_screen/widgets/hide_comment_widget.dart';

import 'comment_favorite.dart';
import 'comment_user.dart';

class BuildComment extends StatefulWidget {
  const BuildComment({Key? key}) : super(key: key);

  @override
  _BuildCommentState createState() => _BuildCommentState();
}

class _BuildCommentState extends State<BuildComment> {
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          if (index == 0) {
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
                        Text(
                          'Liverpool will winner in C1 2022 and Mohamed Salah will has golden ball 2022',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14,
                            letterSpacing: 0.4,
                          ),
                          maxLines: isExpanded ? 2 : 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          child: ConstrainedBox(
                            constraints: isExpanded
                                ? BoxConstraints(maxWidth: AppDimensions.d100w)
                                : const BoxConstraints(
                                    maxHeight: double.infinity),
                            child: isExpanded
                                ? Row(
                                    children: const [
                                      Text(
                                        'View replies (6)',
                                        style: TextStyle(color: AppColors.gray),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: AppColors.gray,
                                      )
                                    ],
                                  )
                                : Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      HideCommentWidget(),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Comment(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Comment(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Comment(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Comment(),
                                    ],
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                  CommentFavorite()
                ],
              ),
            );
          } else {
            return CommentUser();
          }
        });
  }
}
