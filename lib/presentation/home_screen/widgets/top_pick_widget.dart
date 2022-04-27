import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/presentation/home_screen/pages/home_detail.dart';
import '../../../data/resources/dimensions.dart';

class TopPickWidget extends StatelessWidget {
  final List<String> imagesList = [
    'https://afamilycdn.com/Tnk9vRlUgEMOa9xiFyoQdi0bvg9Omj/Image/2012/08/120905phim1-feb54.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTQzOTc2MDk0OF5BMl5BanBnXkFtZTgwNTY5MjY1MDE@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjE2OTYwMzQzNl5BMl5BanBnXkFtZTcwNDM1MjMzMQ@@._V1_.jpg',
    'https://i.pinimg.com/originals/3c/08/92/3c089293cf32e6844c7986d6a2b2e4cc.jpg',
    'https://i.pinimg.com/originals/c2/0e/3c/c20e3c9cf0ae583fd84f7408a26444a5.jpg',
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
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeDetail();
                      },
                    ),
                  );
                },
                child: ClipRRect(
                  child: CachedNetworkImage(
                    imageUrl: imagesList[index],
                    width: AppDimensions.d40w,
                    height: 120,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            );
          }),
    );
  }
}
