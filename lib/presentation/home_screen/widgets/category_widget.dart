import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

import '../../../data/resources/dimensions.dart';

class CategoryWidget extends StatelessWidget {
  final List<String> imagesList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQjLD1McYRXkfb249H509jbFgOHspN9rkeYXU9lJf04tIdB4SH5TQ1ryyqNAt2EUC5Aq0&usqp=CAU',
    'https://blog.reverbnation.com/wp-content/uploads/2021/04/commercial-and-bedroom-producer.jpg',
    'https://www.mckinsey.com/~/media/McKinsey/Featured%20Insights/Asia%20Pacific/Reimagining%20tourism%20How%20Vietnam%20can%20accelerate%20travel%20recovery/1164214961-1536x1536.jpg',
    'https://cdn-1.motorsport.com/images/amp/YP3Qxl32/s1000/marc-marquez-repsol-honda-team.jpg',
    'https://media.cntraveler.com/photos/5a84852c7211e1293261ceb8/16:9/w_2560,c_limit/Skydive-Dubai_2018_GettyImages-643320488.jpg',
  ];
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
              padding: EdgeInsets.fromLTRB(index == 0 ? 16 : 0, 0,
                  index == imagesList.length - 1 ? 0 : 16, 0),
              child: Stack(
                children: [
                  ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl: imagesList[index],
                      width: AppDimensions.d30w,
                      height: 120,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 7,
                    child: Text(
                      index == 0
                          ? "Sports"
                          : (index % 2 == 0 ? 'Travel' : 'Technology'),
                      style: const TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
