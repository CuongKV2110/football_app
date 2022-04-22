import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/data/resources/colors.dart';

class BuildShopBar extends StatelessWidget {
  const BuildShopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
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
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: AppColors.gray,
                      fontSize: 15,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.gray,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(Ionicons.options_outline, color: AppColors.orange1),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
