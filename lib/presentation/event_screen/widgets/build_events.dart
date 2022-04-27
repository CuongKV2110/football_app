import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/data/resources/dimensions.dart';
import '../../widgets/build_user.dart';

class BuildEvents extends StatelessWidget {
  String img_url1 =
      'https://i.pinimg.com/originals/fa/f7/8d/faf78d83138ffcb0e2375f9db7540c95.jpg';
  String img_url2 =
      'https://thumbs.dreamstime.com/b/summer-partyl-poster-design-illustration-party-71357859.jpg';
  String string1 =
      'My trip to China started Bejing, where I stayed in a beautiful hotel called uhaskh asdhasdh ashasdhas diash a';
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl: index % 2 == 0 ? img_url1 : img_url2,
                      width: AppDimensions.d90w,
                      height: AppDimensions.d90w,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      width: 56,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '15',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.black1,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'Sep',
                              style: TextStyle(
                                color: AppColors.black1,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 10, 34, 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Caroline Kennedy',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              string1,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            BuildUser()
                          ],
                        ),
                      ),
                      height: AppDimensions.d38w,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              AppColors.black1,
                              AppColors.black3.withOpacity(0.8),
                              AppColors.black3.withOpacity(0.6),
                            ]),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        },
        childCount: 10,
      ),
    );
  }
}
