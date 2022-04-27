import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
  String img_url2 =
      'https://preview.redd.it/z2crwms8eox61.jpg?auto=webp&s=177c534c79de7e168466e0948619cca367d16b83';
  String img_url3 =
      'https://i.vietgiaitri.com/2021/6/20/cau-thu-kai-havertz-chuong-mac-do-streetwear-ngoai-doi-a82-5835715.jpg';
  String img_url4 =
      'https://img.okezone.com/content/2020/08/19/51/2264335/ini-penyebab-kai-havertz-belum-kunjung-gabung-chelsea-jNl2jnzkKt.jpg';
  String img_url5 =
      'https://localbrand.vn/wp-content/uploads/2021/07/cau-thu-dien-trai-mua-euro-masonmount-1.jpg';
  String img_url6 = 'https://images.indianexpress.com/2020/03/mason-mount.jpg';
  String content =
      'Kai Havertz currently plays for Chelsea, he plays as a striker. He has an amazing appearance, but he has not had a lover';
  bool isPressed = false;

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
                        _buildIcon(),
                        const SizedBox(height: 10),
                        _buildContent(),
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
        childCount: 10,
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
                  imageUrl: index % 2 == 0 ? img_url1 : img_url2,
                  fit: BoxFit.fill,
                  width: AppDimensions.d50w,
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
                      imageUrl: index % 2 == 0 ? img_url3 : img_url5,
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
                      imageUrl: index % 2 == 0 ? img_url4 : img_url6,
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

  Widget _buildIcon() {
    return Row(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
              child: Icon(
                isPressed ? Icons.favorite : Icons.favorite_outline,
                color: isPressed ? AppColors.red2 : AppColors.white,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
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
        const Icon(
          Icons.bookmark_outline,
          color: AppColors.white,
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Text(
      content,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(color: AppColors.white, fontSize: 12, height: 1.7),
    );
  }
}
