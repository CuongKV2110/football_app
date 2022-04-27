import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class BuildWatchTime extends StatelessWidget {
  const BuildWatchTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.access_time_outlined,
          color: AppColors.white,
          size: 16,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          '13:15',
          style: TextStyle(color: AppColors.white, fontSize: 12),
        )
      ],
    );
  }
}
