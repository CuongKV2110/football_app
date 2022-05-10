import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/models/shop.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';
import '../pages/shop_detail_screen.dart';
import 'button_widget.dart';
import 'info_widget.dart';

class BuildShop extends StatefulWidget {
  const BuildShop({Key? key}) : super(key: key);

  @override
  _BuildShopState createState() => _BuildShopState();
}

class _BuildShopState extends State<BuildShop> {
  String img_url1 =
      'https://i.pinimg.com/736x/e3/af/24/e3af24414fb250041a4589a4148e9201.jpg';
  String img_url2 = 'https://kenhtinviet.com/uploads/2021/03/xja1616083736.jpg';
  String img_url3 =
      'https://i.pinimg.com/550x/ac/7f/f5/ac7ff52795234bc096f3a3f5614a2e88.jpg';
  String img_url4 =
      'https://cdn.bongdaplus.vn/Assets/Media/2021/05/18/77/Mason-Mount-xuat-sac-nhat-chelsea.jpg';
  String img_url5 =
      'https://localbrand.vn/wp-content/uploads/2021/07/cau-thu-dien-trai-mua-euro-masonmount-1.jpg';
  String img_url6 =
      'http://media.tinthethao.com.vn/files/bongda/2021/02/02/untitled9-1711png.png';
  String img_url7 =
      'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/10/30/969136/Cristiano-Ronaldo4.jpg';
  String img_url8 =
      'https://znews-photo.zingcdn.me/w660/Uploaded/qxjrcqjwq/2020_04_09/d8pi64rxoau0ibx_15601238775481684274358.jpg';
  String img_url9 =
      'http://media.tinthethao.com.vn/files/bongda/2021/12/30/ronaldo-1057png.png';
  final List<Shop> listShop = [];

  @override
  void initState() {
    listShop.add(
      Shop(
        img1: img_url1,
        img2: img_url2,
        img3: img_url3,
        content:
            'Havertz made his senior debut with the club at the same year. Upon making his debut, Havertz became the club\'s youngest-ever debutant ',
        isTym: false,
        isSave: false,
      ),
    );
    listShop.add(
      Shop(
        img1: img_url4,
        img2: img_url5,
        img3: img_url6,
        content:
            'Chelsea matches including the one against Barnsley in the third round of the EFL Cup on 23 September, which ended in a 6–0 win at home',
        isTym: false,
        isSave: false,
      ),
    );
    listShop.add(
      Shop(
        img1: img_url7,
        img2: img_url8,
        img3: img_url9,
        content:
            'Ronaldo made his international debut for Portugal in 2003 at the age of 18 and has since earned over 180 caps, making him Portugal',
        isTym: false,
        isSave: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const ShopDetailScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  width: AppDimensions.d90w,
                  height: AppDimensions.d50h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.black2.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeader(index),
                        const SizedBox(height: 10),
                        _buildImage(index),
                        const SizedBox(height: 10),
                        _buildIcon(index),
                        const SizedBox(height: 10),
                        _buildContent(index),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          );
        },
        childCount: listShop.length,
      ),
    );
  }

  Widget _buildHeader(int index) {
    return Row(
      children: [
        InfoWidget(index),
        const Spacer(),
        const ButtonWidget(),
      ],
    );
  }

  Widget _buildImage(int index) {
    return Expanded(
      child: GestureDetector(
        child: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  imageUrl: listShop[index].img1,
                  fit: BoxFit.fill,
                  width: AppDimensions.d50w,
                  height: AppDimensions.d40h,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: CachedNetworkImage(
                      imageUrl: listShop[index].img2,
                      fit: BoxFit.fill,
                      width: AppDimensions.d30w,
                      height: 100,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: CachedNetworkImage(
                      imageUrl: listShop[index].img3,
                      fit: BoxFit.fill,
                      width: AppDimensions.d30w,
                      height: 100,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(int index) {
    return Row(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  listShop[index].isTym = !listShop[index].isTym;
                });
              },
              child: Icon(
                listShop[index].isTym ? Icons.favorite : Icons.favorite_outline,
                color: listShop[index].isTym ? AppColors.red2 : AppColors.white,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              '2.3K',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.white,
                fontSize: 12,
              ),
            )
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              listShop[index].isSave = !listShop[index].isSave;
            });
          },
          child: Icon(
            listShop[index].isSave ? Icons.bookmark : Icons.bookmark_outline,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildContent(int index) {
    return Text(
      listShop[index].content,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(color: AppColors.white, fontSize: 12, height: 1.7),
    );
  }
}
