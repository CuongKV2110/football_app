import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../data/resources/colors.dart';

class BuildEventsBar extends StatelessWidget {
  const BuildEventsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Events',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Ionicons.calendar_outline,
                size: 30,
                color: AppColors.white,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
