import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/data/resources/colors.dart';

class BuildShopBar extends StatelessWidget {
  const BuildShopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
