import 'package:flutter/material.dart';
import 'package:music_app/presentation/login_screen/widgets/build_image_widget.dart';
import 'package:music_app/presentation/login_screen/widgets/build_media_widget.dart';
import 'package:music_app/presentation/login_screen/widgets/build_options_widget.dart';

import '../../../data/resources/colors.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            AppColors.black1,
            AppColors.black2,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: const [
            SizedBox(
              height: 60,
            ),
            BuildImageWidget(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to Influncer App',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 26,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            BuildOptionsWidget(),
            SizedBox(
              height: 30,
            ),
            BuildMediaWidget()
          ],
        ),
      ),
    );
  }
}
