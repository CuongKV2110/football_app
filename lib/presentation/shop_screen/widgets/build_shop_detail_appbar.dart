import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class BuildShopDetailAppBar extends StatelessWidget {
  const BuildShopDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
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
          focusColor: AppColors.white,
          hintText: 'Search',
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
    );
  }
}
