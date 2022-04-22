import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/presentation/login_screen/widgets/build_media_widget.dart';

import '../widgets/build_image_widget2.dart';
import '../widgets/build_signin_widget.dart';
import '../widgets/sign_in_button_widget.dart';
import '../widgets/sign_up_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          backgroundColor: AppColors.black1,
          body: SingleChildScrollView(
            child: Column(
              children: [
                BuildImageWidget2(),
                const SizedBox(
                  height: 20,
                ),
                const BuildSigninWidget(),
                const SizedBox(
                  height: 20,
                ),
                const SignInButtonWidget(),
                const SizedBox(
                  height: 20,
                ),
                const BuildMediaWidget(),
                const SizedBox(
                  height: 10,
                ),
                const SignUpWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
