import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/presentation/profile_screen/widgets/build_content.dart';
import '../widgets/build_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                BuildProfile(),
                const SizedBox(
                  height: 20,
                ),
                BuildContent('Stories'),
                SizedBox(
                  height: 10,
                ),
                BuildContent('Trending'),
                SizedBox(
                  height: 10,
                ),
                BuildContent('Recent'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
