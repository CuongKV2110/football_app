import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: TextField(
              style: TextStyle(color: AppColors.white),
              decoration: InputDecoration(
                hintText: 'User Name',
                hintStyle: TextStyle(
                  color: AppColors.white,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 56,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              style: TextStyle(color: AppColors.white),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: AppColors.white,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 56,
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: TextField(
              style: TextStyle(color: AppColors.white),
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: AppColors.white,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 56,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              style: TextStyle(color: AppColors.white),
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                hintStyle: TextStyle(
                  color: AppColors.white,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        _buildCheckBox()
      ],
    );
  }

  Widget _buildCheckBox() {
    return Row(
      children: [
        Checkbox(
          fillColor: MaterialStateProperty.all(AppColors.white),
          checkColor: AppColors.black1,
          activeColor: AppColors.white,
          value: value,
          onChanged: (bool? value) {
            setState(() {
              this.value = value!;
            });
          },
        ),
        const Text(
          'I accept terms  & conditions and privacy policy',
          style: TextStyle(
            fontSize: 12,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
