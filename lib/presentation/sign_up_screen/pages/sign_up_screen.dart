import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/presentation/sign_up_screen/widgets/sign_in_option.dart';

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
      child: Scaffold(
        backgroundColor: AppColors.black1,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: const [
                SignUpForm(),
                SizedBox(
                  height: 20,
                ),
                SignUpButton(),
                SizedBox(
                  height: 20,
                ),
                SignInOption()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
