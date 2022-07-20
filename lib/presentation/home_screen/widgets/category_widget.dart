import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

import '../../../data/resources/dimensions.dart';
import '../pages/home_detail_screen.dart';

class CategoryWidget extends StatelessWidget {
  List<String> imagesList;

  CategoryWidget(this.imagesList);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.d100w,
      height: 120,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: imagesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(index == 0 ? 16 : 0, 0, 16, 0),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeDetailScreen(imagesList[index]);
                          },
                        ),
                      );
                    },
                    child: ClipRRect(
                      child: CachedNetworkImage(
                        imageUrl: imagesList[index],
                        width: AppDimensions.d30w,
                        height: 120,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
