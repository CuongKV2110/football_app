import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

import '../../sign_up_screen/pages/sign_up_screen.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Didnt have any account ? ',
                style: TextStyle(color: AppColors.white, fontSize: 14),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUpScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  'Sign Up here',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'By Singing In, you agree to our terms & conditions',
            style: TextStyle(color: AppColors.white, fontSize: 12),
          )
        ],
      ),
    );
  }
}
