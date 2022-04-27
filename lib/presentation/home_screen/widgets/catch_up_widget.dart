import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

class CatchUpWidget extends StatelessWidget {
  final List<String> imagesList = [
    'https://levi.pt/apps/frontend/public/static/img/your-voice-your-way/slide/desktop/levis-music-project-20.jpg',
    'https://www.jonesaroundtheworld.com/wp-content/uploads/2018/12/Euphoria-Music-Festivals-in-Texas-2020.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOy7RHmEr4lOiYf3NBp6gkxHwdbMg2_jzPNYERoAjlMXKnpgsfqDBYRzkcNsGn2R1hX5E&usqp=CAU',
    'https://imgix.bustle.com/uploads/getty/2022/1/4/abacf7e4-1aaf-446c-a68f-6eea27e4f790-getty-938603878.jpg?w=1200&h=630&fit=crop&crop=faces&fm=jpg',
    'https://content.ticketarena.co.uk/media/16608/67658690_10156869451539177_2868809369410076672_o.jpg?height=675&mode=crop&width=1200',
  ];

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
                  ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl: imagesList[index],
                      width: AppDimensions.d60w,
                      height: 170,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(16),
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
