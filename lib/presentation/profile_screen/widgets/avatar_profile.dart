import 'package:flutter/material.dart';
import 'package:music_app/presentation/profile_screen/widgets/avatar_profile1.dart';

import '../../../data/resources/colors.dart';

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarProfile1(),
        const SizedBox(
          height: 6,
        ),
        const Text(
          'Maria Sharapova',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
        const Text(
          '@sharapova.mrs',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
