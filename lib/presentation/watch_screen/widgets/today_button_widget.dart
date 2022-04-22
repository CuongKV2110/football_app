import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class TodayButtonWidget extends StatelessWidget {
  const TodayButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: AppDimensions.d25w,
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: AppColors.black1,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              fixedSize: Size(AppDimensions.d25w - 2, 36)),
          child: const Text(
            'Today',
            style: TextStyle(
              color: AppColors.orange2,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.orange1,
            AppColors.orange2,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
