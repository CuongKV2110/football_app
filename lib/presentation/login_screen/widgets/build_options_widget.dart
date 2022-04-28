import 'package:flutter/material.dart';
import 'package:music_app/presentation/live_screen/pages/live_screen.dart';
import 'package:music_app/presentation/sign_in_screen/pages/sign_in_screen.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class BuildOptionsWidget extends StatelessWidget {
  String img_url =
      'https://images.unsplash.com/photo-1624253321171-1be53e12f5f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8amFwb258ZW58MHx8MHx8&w=1000&q=80';

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
                  MaterialPageRoute(
                    builder: (context) {
                      return SignInScreen();
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
                MaterialPageRoute(
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
          )),
        ],
      ),
    );
  }
}
