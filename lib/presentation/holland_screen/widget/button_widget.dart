import 'package:flutter/material.dart';
import '../../../data/resources/colors.dart';

class ButtonWidget extends StatelessWidget {
  String title;

  ButtonWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      elevation: 0,
      backgroundColor: AppColors.white,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromHeight(40),
                  primary: AppColors.gray2,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90),
                  ),
                ),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 18, color: AppColors.black1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
