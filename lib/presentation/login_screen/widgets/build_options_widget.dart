import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/presentation/live_screen/pages/live_screen.dart';
import 'package:music_app/presentation/sign_in_screen/pages/sign_in_screen.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class BuildOptionsWidget extends StatelessWidget {
  String img_url =
      'https://i.pinimg.com/550x/f1/ef/9b/f1ef9bf2fd0dbc8d01fad7e9c197e40a.jpg';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return const SignInScreen();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.orange1,
                      AppColors.orange2,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Container(
                  width: AppDimensions.d60w,
                  height: 56,
                  alignment: Alignment.center,
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return LiveScreen(img_url);
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.orange1,
                      AppColors.orange2,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Container(
                  width: AppDimensions.d60w,
                  height: 56,
                  alignment: Alignment.center,
                  child: const Text(
                    'As a guest',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
