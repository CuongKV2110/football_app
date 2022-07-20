import 'package:flutter/material.dart';
import 'package:music_app/presentation/login_screen/widgets/build_image_widget1.dart';
import 'package:music_app/presentation/login_screen/widgets/build_media_widget.dart';
import 'package:music_app/presentation/login_screen/widgets/build_options_widget.dart';

import '../../../data/resources/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            AppColors.black2,
            AppColors.black2,
          ],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const BuildImageWidget1(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Welcome to Football App',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              BuildOptionsWidget(),
              const SizedBox(
                height: 30,
              ),
              const BuildMediaWidget()
            ],
          ),
        ),
      ),
    );
  }
}
