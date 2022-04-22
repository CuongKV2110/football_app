import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../data/resources/colors.dart';

class WatchDetailContent extends StatelessWidget {
  const WatchDetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Payment Options',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          /*SizedBox(
            width: AppDimensions.d90w,
            child: Row(
              children: [
                Expanded(
                  child: Container(
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
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
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
                )),
              ],
            ),
          )*/
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Subscription Includes',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(
                    Ionicons.checkmark,
                    color: AppColors.orange1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Full HD coverage',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(
                    Ionicons.checkmark,
                    color: AppColors.orange1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Stream direct to your TV',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(
                    Ionicons.checkmark,
                    color: AppColors.orange1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Customer support',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(
                    Ionicons.checkmark,
                    color: AppColors.orange1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Free trial',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
