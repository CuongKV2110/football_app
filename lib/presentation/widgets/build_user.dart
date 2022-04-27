import 'package:flutter/material.dart';

import '../../data/resources/colors.dart';

class BuildUser extends StatelessWidget {
  const BuildUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage('images/avt.jpg'),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          'Alexander Maria Laporta',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
