import 'package:flutter/material.dart';
import 'package:music_app/presentation/profile_screen/widgets/avatar_profile.dart';
import 'package:music_app/presentation/profile_screen/widgets/background_img.dart';
import 'package:music_app/presentation/profile_screen/widgets/build_container.dart';
import 'package:music_app/presentation/profile_screen/widgets/build_info.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';
import 'build_appbar.dart';

class BuildProfile extends StatelessWidget {
  const BuildProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const BuildContainer(),
        Positioned(
          top: 0,
          child: BackgroundImage(),
        ),
        const Positioned(
          top: 20,
          child: BuildAppBar(),
        ),
        Positioned(
          top: 70,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: AppDimensions.d80w,
                    height: AppDimensions.d24h,
                    color: Colors.transparent,
                  ),
                  Positioned(
                    child: Container(
                      width: AppDimensions.d80w,
                      height: AppDimensions.d18h,
                      decoration: BoxDecoration(
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                              color: AppColors.black3,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            AppColors.black3,
                            AppColors.black4.withOpacity(0.9),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    child: AvatarProfile(),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const BuildInfo()
            ],
          ),
        ),
      ],
    );
  }
}
