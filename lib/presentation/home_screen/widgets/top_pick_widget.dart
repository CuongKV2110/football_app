import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/presentation/home_screen/pages/home_detail_screen.dart';
import '../../../data/resources/dimensions.dart';

class TopPickWidget extends StatelessWidget {
  final List<String> imagesList = [
    'https://cdn-img.thethao247.vn/storage/files/tranvutung/2022/03/15/tranh-cai-bung-no-nha-glazer-choi-lon-khi-muon-pha-huy-hoan-toan-old-trafford-118752.jpg',
    'https://i.ytimg.com/vi/WbqAzrd8xHQ/maxresdefault.jpg',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/a0/7d/c2/wanda-metropolitano.jpg?w=1200&h=-1&s=1',
    'https://static.independent.co.uk/s3fs-public/thumbnails/image/2013/04/02/20/pg-68-real-estate-getty.jpg?quality=75&width=1200&auto=webp',
    'https://cdn.getyourguide.com/img/tour/5cd031d5654c4.jpeg/98.jpg',
    'https://kenh14cdn.com/thumb_w/660/203336854389633024/2022/2/23/manchester-city-recreates-the-etihad-stadium-in-the-world-of-16455528245001485558065.jpeg',
    'https://img.docbao.vn/2021/12/01/allianz-arena-4365.jpeg',
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
                        return HomeDetailScreen(imagesList[index]);
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
