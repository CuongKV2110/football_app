import 'package:flutter/material.dart';
import 'package:music_app/presentation/live_screen/pages/live_screen.dart';

import '../../../data/resources/colors.dart';
import '../../signin_screen/pages/sign_in_screen.dart';

class BuildOptionsWidget extends StatelessWidget {
  const BuildOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SignInScreen();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 56,
              width: 150,
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.white,
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
                color: AppColors.white,
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const LiveScreen();
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 56,
              width: 150,
              child: const Text(
                'As a guest',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.white,
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
                color: AppColors.white,
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
