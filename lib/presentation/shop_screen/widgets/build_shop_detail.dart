import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../data/resources/colors.dart';

class BuildShopDetail extends StatefulWidget {
  const BuildShopDetail({Key? key}) : super(key: key);

  @override
  _BuildShopDetailState createState() => _BuildShopDetailState();
}

class _BuildShopDetailState extends State<BuildShopDetail> {
  final List<String> imagesList = [
    'https://cf.shopee.vn/file/3f217175d2ef0417ec83325907137a47',
    'https://cf.shopee.vn/file/fbfdad77c8d108e2f6aff2036c8f8980',
    'https://file.hstatic.net/1000061481/file/2.3_c3d5765c94e440c5b408a6849fc70466.jpeg',
    'https://cf.shopee.vn/file/7203786a758abb3f916e729e73dd2a88',
    'https://vn-live-01.slatic.net/p/b3a8ea7dafb92528edd3fdee3bbeef01.jpg',
    'https://file.hstatic.net/1000061481/file/giay_co_nhan_tao_tot__4__c4441963d57949f686c024e00dfa5e96.jpg',
    'https://cf.shopee.vn/file/fc749d2ba69234945471b263a36d76d9',
    'https://www.sport9.vn/images/uploaded/Vapor%2013%20FTL2/87c301bb223ed860812f.jpg',
    'https://giaydabonghana.com/wp-content/uploads/2019/03/giay-da-bong-san-co-nhan-tao-mitre-vang-tf-hana-1.jpg',
    'https://i.pinimg.com/originals/36/bf/43/36bf43eabcbd15f6c5215e3a056d21e5.jpg',
  ];
  bool isPressed = false;
  int _currentImg = -1;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.orange1,
                  AppColors.orange2,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: AppColors.black4,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: CachedNetworkImage(
                            imageUrl: imagesList[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            '\$ 25.99',
                            style: TextStyle(
                              color: AppColors.orange1,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentImg = index;
                                isPressed = !isPressed;
                              });
                            },
                            child: Icon(
                              _currentImg == index
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              color: _currentImg == index
                                  ? AppColors.red2
                                  : AppColors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Adidas Predator X3.21',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        childCount: imagesList.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 10,
        childAspectRatio: 0.6,
      ),
    );
  }
}
