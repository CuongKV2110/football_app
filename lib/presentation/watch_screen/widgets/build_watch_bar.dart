import 'package:flutter/material.dart';
import 'package:music_app/presentation/watch_screen/widgets/today_button_widget.dart';
import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class BuildWatchBar extends StatelessWidget {
  const BuildWatchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Row(
          children: [
            Row(
              children: [
                Text(
                  '24',
                  style: TextStyle(color: AppColors.white, fontSize: 44),
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wed',
                      style: TextStyle(color: AppColors.gray, fontSize: 14),
                    ),
                    Text(
                      'May 2021',
                      style: TextStyle(color: AppColors.gray, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
            Spacer(),
            TodayButtonWidget()
          ],
        ),
      ),
    );
  }
}
