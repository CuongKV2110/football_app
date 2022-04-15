import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

class ShareDetailWidget extends StatelessWidget {
  const ShareDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.share,
          color: AppColors.white,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          '150',
          style: TextStyle(color: AppColors.white, fontSize: 11),
        )
      ],
    );
  }
}
