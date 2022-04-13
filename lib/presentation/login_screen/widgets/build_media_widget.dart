import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

class BuildMediaWidget extends StatelessWidget {
  const BuildMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDivider(),
        SizedBox(
          height: 20,
        ),
        _buildMedia(),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: const [
        Expanded(
          child: Divider(
            color: AppColors.white,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          "Or via social media",
          style: TextStyle(color: AppColors.white, fontSize: 20),
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
          child: Divider(
            color: AppColors.white,
          ),
        ),
      ]),
    );
  }

  Widget _buildMedia() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage('images/face.png'),
            backgroundColor: AppColors.black1,
          ),
          CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage('images/google.png'),
            backgroundColor: AppColors.black1,
          ),
          CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage('images/twitter.png'),
            backgroundColor: AppColors.black1,
          ),
        ],
      ),
    );
  }
}
