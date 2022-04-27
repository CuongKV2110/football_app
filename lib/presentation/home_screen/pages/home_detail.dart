import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';
import '../widgets/home_image_widget.dart';

class HomeDetail extends StatelessWidget {
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
              HomeImageWidget(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
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
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
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
                    SizedBox(
                      height: 16,
                    ),
                    Divider(
                      height: 1,
                      color: AppColors.gray,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Courtney Black\'s Warrior',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      text,
                      style: TextStyle(color: AppColors.white, fontSize: 14),
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
