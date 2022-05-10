import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';

import '../../../data/resources/dimensions.dart';
import '../pages/home_detail_screen.dart';

class CategoryWidget extends StatelessWidget {
  final List<String> imagesList = [
    'https://vnn-imgs-f.vgcloud.vn/2020/10/20/14/champions-league.jpg',
    'https://thumbs.dreamstime.com/b/award-championship-trophy-22229452.jpg',
    'https://news.cgtn.com/news/2021-05-31/Copa-America-no-host-after-Argentina-dropped-due-to-COVID-19-10HR7nlXepy/img/a491912286784128ab62992fb0c63eae/a491912286784128ab62992fb0c63eae-1920.png',
    'https://images.news18.com/ibnlive/uploads/2022/05/fifa-world-cup-trophy.jpg',
    'https://phantom-marca.unidadeditorial.es/5ac2cfca4ca82b6cd89db3d2346fc853/resize/1320/f/jpg/assets/multimedia/imagenes/2021/07/11/16260319322052.jpg',
    'https://staticg.sportskeeda.com/editor/2019/06/318e9-15611111738749-800.jpg',
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
