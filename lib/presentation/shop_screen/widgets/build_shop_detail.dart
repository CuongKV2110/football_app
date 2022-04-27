import 'package:flutter/material.dart';
import '../../../data/resources/colors.dart';

class BuildShopDetail extends StatefulWidget {
  const BuildShopDetail({Key? key}) : super(key: key);

  @override
  _BuildShopDetailState createState() => _BuildShopDetailState();
}

class _BuildShopDetailState extends State<BuildShopDetail> {
  String img_url1 =
      'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/11/12/4183664669.jpg';
  String img_url2 =
      'https://congluan.ex-cdn.com/resize/700x400/files/news/2022/03/13/5-ky-luc-the-gioi-do-cristiano-ronaldo-nam-giu-101308.jpg';
  String img_url3 =
      'https://media.bongda.com.vn/files/quan.le/2019/04/08/marco-reus-03-2048.jpg';
  bool isPressed = false;

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
                          child: Image.network(
                            index == 1
                                ? img_url1
                                : (index % 3 == 0 ? img_url2 : img_url3),
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
                                isPressed = !isPressed;
                              });
                            },
                            child: Icon(
                              isPressed
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              color:
                                  isPressed ? AppColors.red2 : AppColors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'White strap plunge top',
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
        childCount: 10,
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
