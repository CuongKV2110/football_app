import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class HomeSliderDots extends StatelessWidget {
  bool isActive;

  HomeSliderDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 6,
      width: 16,
      child: Container(
        width: 16,
        height: 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isActive ? AppColors.orange1 : AppColors.gray,
        ),
      ),
    );
  }
}
