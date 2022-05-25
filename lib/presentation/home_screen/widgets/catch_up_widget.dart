import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';
import '../pages/home_detail_screen.dart';

class CatchUpWidget extends StatelessWidget {
  List<String> imagesList;

  CatchUpWidget(this.imagesList);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.d100w,
      height: 170,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(index == 0 ? 16 : 0, 0,
                  index == imagesList.length - 1 ? 0 : 16, 0),
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
                        width: AppDimensions.d60w,
                        height: 170,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 14,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dark Polo Gang',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Italian Graffic',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.tv_outlined,
                              color: AppColors.orange1,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '56 min',
                              style: TextStyle(
                                  color: AppColors.orange1, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
