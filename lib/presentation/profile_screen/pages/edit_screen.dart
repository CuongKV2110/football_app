import 'package:flutter/material.dart';
import 'package:music_app/presentation/profile_screen/widgets/build_change_button.dart';
import 'package:music_app/presentation/sign_up_screen/widgets/sign_up_form.dart';

import '../../../data/resources/colors.dart';
import '../widgets/avatar_profile1.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                AppColors.black2,
                AppColors.black2,
              ],
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                'Change Profile Information',
                style: TextStyle(color: AppColors.white, fontSize: 18),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: const [
                  AvatarProfile1(),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: SignUpForm(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  BuildChangeButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
