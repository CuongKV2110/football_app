import 'package:flutter/material.dart';
import '../../../data/resources/colors.dart';
import '../widgets/watch_detail_content.dart';
import '../widgets/watch_detail_image.dart';

class WatchDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              WatchDetailImage(),
              SizedBox(
                height: 20,
              ),
              WatchDetailContent()
            ],
          ),
        ),
      ),
    );
  }
}
