import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/presentation/login_screen/widgets/build_image_widget1.dart';
import 'package:music_app/presentation/sign_up_screen/widgets/sign_in_option.dart';
import 'package:music_app/presentation/signin_screen/widgets/build_image_widget2.dart';

import '../widgets/sign_up_button_widget.dart';
import '../widgets/sign_up_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: const [
                      SignUpForm(),
                      SignUpButton(),
                      SizedBox(
                        height: 10,
                      ),
                      SignInOption()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
