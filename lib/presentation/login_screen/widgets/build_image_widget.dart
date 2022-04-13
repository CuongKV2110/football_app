import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class BuildImageWidget extends StatelessWidget {
  const BuildImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 54),
      child: Container(
        width: AppDimensions.d55w,
        height: AppDimensions.d40h,
        color: AppColors.orange1,
        child: Image.asset(
          'images/bgr1.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
