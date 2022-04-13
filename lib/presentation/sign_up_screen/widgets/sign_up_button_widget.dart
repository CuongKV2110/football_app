import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 150,
      child: Center(
        child: Container(
            height: 52,
            width: 144,
            child: const Center(
              child: Text(
                'SIGN UP',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
              color: AppColors.black1,
              borderRadius: BorderRadius.circular(34),
            )),
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
        borderRadius: BorderRadius.circular(32),
      ),
    );
  }
}
