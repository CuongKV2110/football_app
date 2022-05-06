import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/data/models/comment.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/data/resources/dimensions.dart';
import 'package:music_app/presentation/live_screen/widgets/comment_detail.dart';
import 'package:music_app/presentation/live_screen/widgets/hide_comment_widget.dart';
import 'comment_user.dart';

class BuildComment extends StatefulWidget {
  const BuildComment({Key? key}) : super(key: key);

  @override
  _BuildCommentState createState() => _BuildCommentState();
}

class _BuildCommentState extends State<BuildComment> {
  bool isExpanded = true;
  final List<Comment> listComment = [];

  @override
  void initState() {
    listComment.add(
      Comment(
        name: 'Cristiano Ronaldo',
        avt:
            'https://vcdn-thethao.vnecdn.net/2022/04/29/ronaldo-2-jpeg-1651192227-1651-6951-5484-1651192391.jpg',
        comment:
            'I think MU will comeback stronger in 2023 and i will training with team more to has EPL 2023',
        time: '12 minutes ago',
        tym: 6321,
      ),
    );
    listComment.add(
      Comment(
        name: 'Lionel Messi',
        avt:
            'https://sportstar.thehindu.com/football/football-photos/article37209060.ece/ALTERNATES/LANDSCAPE_1200/Messi',
        comment: 'I think MU will comeback stronger in 2023',
        time: '2 hours ago',
        tym: 532,
      ),
    );
    listComment.add(
      Comment(
        name: 'Kylian Mbappe',
        avt:
            'https://media.techz.vn/resize_x355x/media2019/source/diepanh/1-2022/5-2022/1/mbappe.jpg',
        comment: 'I think MU will comeback stronger in 2023',
        time: '4 hours ago',
        tym: 421,
      ),
    );
    listComment.add(
      Comment(
        name: 'Robert Lewandowski',
        avt:
            'https://media.baoquangninh.com.vn/upload/image/202202/medium/1941554_74d4ab8d7480641e4cc6b8db2f7b369e.jpg',
        comment: 'Bayern Munich still Bigest Foootball Club in the world',
        time: '12',
        tym: 964,
      ),
    );
    listComment.add(
      Comment(
        name: 'Neymar',
        avt:
            'https://image.thanhnien.vn/w1024/Uploaded/2022/oqivotiw/2021_10_13/neymar-2764.jpeg',
        comment: 'I will travel to Las Vegas and relax here after Ligue 1',
        time: '6 hours aho',
        tym: 1231,
      ),
    );
    listComment.add(
      Comment(
        name: 'David De Gea',
        avt:
            'https://nld.mediacdn.vn/291774122806476800/2021/9/20/david-de-gea-16321026911331208259644.jpg',
        comment: 'I think I will has goal keeper is the best 2022 of EPL',
        time: '11 hours ago',
        tym: 137,
      ),
    );
    listComment.add(
      Comment(
        name: 'Kevin de Bruyne',
        avt:
            'https://static.bongda24h.vn/medias/original/2022/3/7/kevin-de-bruyne-phan-khich-truoc-vien-canh-tro-lai-wembley.png',
        comment: 'Man City need some change to the next season',
        time: '7 hours ago',
        tym: 232,
      ),
    );

    listComment.add(
      Comment(
        name: 'Erling Halland',
        avt:
            'https://img.nhandan.com.vn/Files/Images/2021/04/02/bongda-1617342927103.jpg',
        comment: 'Dortmund has shopping very uch in summer 2022',
        time: '12 hours ago',
        tym: 123,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 8, 10),
            child: Row(
              children: [
                GestureDetector(
                  child: const Icon(
                    Ionicons.create_outline,
                    color: AppColors.white,
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      '569 comments',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.close_outlined,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: listComment.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 4, 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: CachedNetworkImageProvider(
                              listComment[index].avt),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listComment[index].name,
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
                                listComment[index].comment,
                                style: const TextStyle(
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
                              Row(
                                children: [
                                  Text(
                                    listComment[index].time,
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
                                      ? BoxConstraints(
                                          maxWidth: AppDimensions.d100w)
                                      : const BoxConstraints(
                                          maxHeight: double.infinity),
                                  child: isExpanded
                                      ? Row(
                                          children: const [
                                            Text(
                                              'View replies (6)',
                                              style: TextStyle(
                                                  color: AppColors.gray),
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: AppColors.gray,
                                            )
                                          ],
                                        )
                                      : Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const HideCommentWidget(),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            CommentDetail(),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            CommentDetail(),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            CommentDetail(),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            CommentDetail(),
                                          ],
                                        ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.favorite_outline,
                              color: AppColors.gray,
                              size: 20,
                            ),
                            Text(
                              listComment[index].tym.toString(),
                              style: TextStyle(color: AppColors.gray),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  return CommentUser(listComment[index]);
                }
              })
        ],
      ),
    );
  }
}
