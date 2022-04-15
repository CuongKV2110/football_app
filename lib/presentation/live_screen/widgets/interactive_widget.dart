import 'package:flutter/material.dart';
import 'package:music_app/presentation/live_screen/widgets/share_widget.dart';

import 'avatar_widget.dart';
import 'comment_widget.dart';
import 'favorite_widget.dart';
import 'music_widget.dart';

class InteractiveWidget extends StatefulWidget {
  const InteractiveWidget({Key? key}) : super(key: key);

  @override
  _InteractiveWidgetState createState() => _InteractiveWidgetState();
}

class _InteractiveWidgetState extends State<InteractiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        AvatarWidget(),
        SizedBox(
          height: 18,
        ),
        FavoriteDetailWidget(),
        SizedBox(
          height: 18,
        ),
        CommentDetailWidget(),
        SizedBox(
          height: 18,
        ),
        ShareDetailWidget(),
        SizedBox(
          height: 18,
        ),
        MusicWidget()
      ],
    );
  }
}
