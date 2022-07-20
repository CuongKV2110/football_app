import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class BuildImageWidget1 extends StatelessWidget {
  const BuildImageWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 54),
      child: Container(
        width: AppDimensions.d70w,
        height: AppDimensions.d45h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.orange1,
              AppColors.orange2,
            ],
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: ClipRRect(
          child: Image.asset(
            'images/fb6.jpg',
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
