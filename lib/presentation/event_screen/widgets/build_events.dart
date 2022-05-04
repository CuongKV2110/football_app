import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/data/resources/dimensions.dart';
import 'package:music_app/presentation/home_screen/pages/home_detail_screen.dart';
import '../../widgets/build_user.dart';

class BuildEvents extends StatelessWidget {
  final List<String> imagesList = [
    'https://i.pinimg.com/originals/fa/f7/8d/faf78d83138ffcb0e2375f9db7540c95.jpg',
    'https://thumbs.dreamstime.com/b/summer-partyl-poster-design-illustration-party-71357859.jpg',
    'https://farm9.staticflickr.com/8041/28365390952_c123943f2c_o.jpg',
    'https://dcassetcdn.com/design_img/2814604/662683/662683_15448748_2814604_a02672dd_thumbnail.png',
    'https://www.xtremeflyers.com/wp-content/uploads/2019/06/Summer-Paradise-Flyer-Template-369x553.jpg',
    'https://graphicriver.img.customer.envatousercontent.com/files/298399713/590.jpg?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=9f5214c3bfba08d87f63594d6ae11f17',
    'https://graphicriver.img.customer.envatousercontent.com/files/348302951/590.jpg?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=e079559f7d0aec9a9c9f00e25d517593',
  ];

  String string1 =
      'My trip to China started Bejing, where I stayed in a beautiful hotel calledbut i not call repeat because i busy';

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
                        return HomeDetailScreen(imagesList[index]);
                      },
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      child: CachedNetworkImage(
                        imageUrl: imagesList[index],
                        width: AppDimensions.d90w,
                        height: AppDimensions.d40h,
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
                              Expanded(
                                child: Text(
                                  'Caroline Kennedy',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  string1,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: AppColors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: BuildUser(),
                              ),
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
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        },
        childCount: imagesList.length,
      ),
    );
  }
}
