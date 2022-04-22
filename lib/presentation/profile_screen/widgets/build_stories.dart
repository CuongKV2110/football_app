import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

import '../../../data/resources/dimensions.dart';

class BuildStories extends StatefulWidget {
  const BuildStories({Key? key}) : super(key: key);

  @override
  _BuildStoriesState createState() => _BuildStoriesState();
}

class _BuildStoriesState extends State<BuildStories> {
  String img_url1 =
      'https://www.winnmediaskn.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-14-at-8.22.36-AM-696x928.jpeg';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18),
      child: SizedBox(
        width: AppDimensions.d100w,
        height: 150,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: index == 4 ? 0 : 10),
                child: Stack(
                  children: [
                    ClipRRect(
                      child: CachedNetworkImage(
                        imageUrl: img_url1,
                        width: 130,
                        height: 130,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    Positioned(
                      bottom: 24,
                      right: 10,
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: AppColors.white,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '12K',
                            style: TextStyle(color: AppColors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
