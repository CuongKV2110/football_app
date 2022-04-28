import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../widgets/home_image_widget.dart';

class HomeDetail extends StatelessWidget {
  String img_url;

  HomeDetail(this.img_url);

  String text =
      'Haih sahdisauh diusahduas hashdiashdia hdias hdiasu disahd iashdisah diashdkjasndaskhd kasdjas diashdiuashd iashd  ashdisahdiashdksa hdas khdksahd  ashdas';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeImageWidget(img_url),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
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
                      style:
                          const TextStyle(color: AppColors.white, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
