import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/dimensions.dart';

import '../../../data/resources/colors.dart';

class BuildOptions extends StatefulWidget {
  const BuildOptions({Key? key}) : super(key: key);

  @override
  _BuildOptionsState createState() => _BuildOptionsState();
}

class _BuildOptionsState extends State<BuildOptions> {
  final List<String> imagesList = [
    'https://hanoigrapevine.com/wp-content/uploads/2014/04/ASEAN-Pride-Music-Festival.jpg',
    'https://www.advocate.com/sites/default/files/outloudx750xlong.jpg',
    'https://cdn3.vectorstock.com/i/1000x1000/28/77/retro-poster-80s-style-placard-party-invitation-vector-37552877.jpg',
    'https://prod-cdn-08.storenvy.com/product_photos/32539779/Backtothe80sParty_1000w.jpg',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildOptions(0, 'New Event'),
              SizedBox(
                width: 20,
              ),
              _buildOptions(1, 'Hot'),
              SizedBox(
                width: 20,
              ),
              _buildOptions(2, 'Upcoming'),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: AppDimensions.d100w,
          height: AppDimensions.d50h,
          color: AppColors.red1,
          child: OptionsContent(_currentIndex),
        ),
      ],
    );
  }

  Widget _buildOptions(int index, String name) {
    bool active = _currentIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: active ? AppColors.black3 : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: active ? AppColors.orange2 : AppColors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget OptionsContent(int index) {
    if (index == 0) {
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 0.6,
          autoPlayAnimationDuration: const Duration(milliseconds: 100),
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: imagesList
            .map(
              (item) => Center(
                child: Image.network(
                  item,
                  fit: BoxFit.fill,
                ),
              ),
            )
            .toList(),
      );
    }
    if (index == 1) {
      return Text("2");
    } else {
      return Text("3");
    }
  }
}
