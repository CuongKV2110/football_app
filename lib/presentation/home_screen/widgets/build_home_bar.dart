import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/data/resources/colors.dart';

class BuildHomeBar extends StatelessWidget {
  const BuildHomeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 0, 29, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi, Kieu Cuong',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          const Text(
            'Welcome',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: TextField(
                  style: TextStyle(color: AppColors.white),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white),
                    ),
                    hintText: 'Search for match',
                    hintStyle: TextStyle(
                      color: AppColors.gray,
                      fontSize: 15,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.gray,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(Ionicons.options_outline,
                    color: AppColors.orange1),
              )
            ],
          ),
        ],
      ),
    );
  }
}
