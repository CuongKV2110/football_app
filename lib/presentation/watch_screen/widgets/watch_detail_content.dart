import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/presentation/watch_screen/widgets/build_watch_cost.dart';

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
            height: 20,
          ),
          Row(
            children: [
              BuildWatchCost('Month'),
              SizedBox(
                width: 20,
              ),
              BuildWatchCost('Year'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
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
