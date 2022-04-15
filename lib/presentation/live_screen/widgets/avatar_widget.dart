import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Padding(
            padding: EdgeInsets.all(6),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/avt.jpg'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.red2,
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: AppColors.white,
                size: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}
