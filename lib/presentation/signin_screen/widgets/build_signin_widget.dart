import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

class BuildSigninWidget extends StatefulWidget {
  const BuildSigninWidget({Key? key}) : super(key: key);

  @override
  _BuildSigninWidgetState createState() => _BuildSigninWidgetState();
}

class _BuildSigninWidgetState extends State<BuildSigninWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            height: 56,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextField(
                style: TextStyle(color: AppColors.white),
                decoration: InputDecoration(
                  hintText: 'E-mail',
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
            height: 26,
          ),
          Container(
            height: 56,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
          )
        ],
      ),
    );
  }
}
