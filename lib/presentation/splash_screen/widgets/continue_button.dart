import 'package:flutter/material.dart';
import 'package:music_app/presentation/login_screen/pages/login_screen.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return LoginScreen();
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
            'Continue',
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
