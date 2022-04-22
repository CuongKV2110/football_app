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
          TextField(
            style: TextStyle(color: AppColors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'E-mail',
              hintStyle: const TextStyle(
                color: AppColors.white,
              ),
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
              labelStyle: TextStyle(color: AppColors.white),
              alignLabelWithHint: true,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          TextField(
            style: TextStyle(color: AppColors.white),
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Pass word',
              hintStyle: const TextStyle(
                color: AppColors.white,
              ),
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
              labelText: 'Pass word',
              labelStyle: TextStyle(color: AppColors.white),
              alignLabelWithHint: true,
            ),
          ),
        ],
      ),
    );
  }
}
