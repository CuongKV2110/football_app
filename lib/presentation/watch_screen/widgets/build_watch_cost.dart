import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class BuildWatchCost extends StatelessWidget {
  String cost;

  BuildWatchCost(this.cost);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Container(
            height: 60,
            color: AppColors.black3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    cost == 'Month' ? "Month Pass" : "Year Pass",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    cost == 'Month' ? "\$ 760" : "\$ 6100",
                    style: TextStyle(
                      color: AppColors.orange2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
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
        ),
      ),
    );
  }
}
