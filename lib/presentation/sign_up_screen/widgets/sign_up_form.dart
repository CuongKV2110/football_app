import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: TextStyle(color: AppColors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.white,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.white,
                width: 1.0,
              ),
            ),
            labelText: 'User Name',
            labelStyle: TextStyle(color: AppColors.white, letterSpacing: 2),
            alignLabelWithHint: true,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(color: AppColors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.white,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.white,
                width: 1.0,
              ),
            ),
            labelText: 'E-mail',
            labelStyle: TextStyle(color: AppColors.white, letterSpacing: 2),
            alignLabelWithHint: true,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(color: AppColors.white),
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.white,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.white,
                width: 1.0,
              ),
            ),
            labelText: 'Password',
            labelStyle: TextStyle(color: AppColors.white, letterSpacing: 2),
            alignLabelWithHint: true,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          style: TextStyle(color: AppColors.white),
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.white,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.white,
                width: 1.0,
              ),
            ),
            labelText: 'Confirm Password',
            labelStyle: TextStyle(color: AppColors.white, letterSpacing: 2),
            alignLabelWithHint: true,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
