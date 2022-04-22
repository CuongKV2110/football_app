import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/data/resources/dimensions.dart';

class BuildChangeButton extends StatelessWidget {
  const BuildChangeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
            'Save Changes',
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
