import 'package:flutter/material.dart';
import '../../../data/resources/colors.dart';
import '../widgets/watch_detail_content.dart';
import '../widgets/watch_detail_image.dart';

class WatchDetailScreen extends StatelessWidget {
  String img_url;

  WatchDetailScreen(this.img_url);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              WatchDetailImage(img_url),
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
