import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/dimensions.dart';

import '../../../data/resources/colors.dart';
import 'home_image_widget.dart';

class BuildHomeDetail extends StatefulWidget {
  String img_url;

  BuildHomeDetail(this.img_url);

  @override
  _BuildHomeDetailState createState() => _BuildHomeDetailState();
}

class _BuildHomeDetailState extends State<BuildHomeDetail>
    with TickerProviderStateMixin {
  bool isExpanded = true;
  String text =
      'James Corden will step down as the host of The Late Late Show (pictured centre) at the end of next season, DailyMail.com can confirm. The Brit, 43, made the decision to quit at the end of season eight despite the best efforts of CBS executives who exclusively told DailyMail.com that they. The Late Late Show, which films out of Los Angeles, first premiered in 1995 with host Tom Snyder. Craig Kilborn and Craig Ferguson followed as host until James Corden came along in 2015 Craig Kilborn and Craig Ferguson followed as host until James Corden came along in 2015 Ferguson followed as host until James Corden came along in 2015 ';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = true;
        });
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  child: ConstrainedBox(
                    constraints: isExpanded
                        ? const BoxConstraints(maxWidth: double.infinity)
                        : BoxConstraints(maxHeight: double.infinity),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Column(
                          children: [
                            HomeImageWidget(widget.img_url),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 21),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.timer_outlined,
                                        color: AppColors.white,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Sunday, Join 14-4:30 pm',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.money_outlined,
                                        color: AppColors.white,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '\$10.00',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Divider(
                                    height: 1,
                                    color: AppColors.gray,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    'Courtney Black\'s Warrior',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    text,
                                    style: const TextStyle(
                                        color: AppColors.white, fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  isExpanded
                                      ? const SizedBox()
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: ClipRRect(
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      'https://www.google.com/maps/d/thumbnail?mid=118mI_eAQvlFruldjAAmVT2aw0f8&hl=en',
                                                  fit: BoxFit.fill,
                                                  width: AppDimensions.d80w,
                                                  height: AppDimensions.d80w,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(28),
                                                ),
                                              ),
                                              child: Ink(
                                                decoration: BoxDecoration(
                                                  gradient:
                                                      const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      AppColors.orange1,
                                                      AppColors.orange2,
                                                    ],
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(28),
                                                ),
                                                child: Container(
                                                  width: AppDimensions.d60w,
                                                  height: 56,
                                                  alignment: Alignment.center,
                                                  child: const Text(
                                                    'Book Now',
                                                    style: const TextStyle(
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: isExpanded
                ? Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: AppDimensions.d100w,
                        height: 80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.black1.withOpacity(0.9),
                              AppColors.black3.withOpacity(0.9),
                              AppColors.brown1.withOpacity(0.9),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isExpanded = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppColors.orange1,
                                  AppColors.orange2,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(28),
                            ),
                            child: Container(
                              width: AppDimensions.d60w,
                              height: 56,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Read More',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: AppColors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        bottom: 6,
                      )
                    ],
                  )
                : const SizedBox(),
          )
        ],
      ),
    );
  }
}
