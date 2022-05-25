import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/dimensions.dart';
import '../../../data/resources/colors.dart';
import '../../live_screen/pages/live_screen.dart';

class BuildOptions extends StatefulWidget {
  List<String> imageList1;
  List<String> imageList2;
  List<String> imageList3;

  BuildOptions(this.imageList1, this.imageList2, this.imageList3);

  @override
  _BuildOptionsState createState() => _BuildOptionsState();
}

class _BuildOptionsState extends State<BuildOptions> {
  int _currentIndex = 1;
  int _currentImg = 0;
  bool isPressed = false;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildOptions(0, 'New Event', widget.imageList1),
            const SizedBox(
              width: 20,
            ),
            _buildOptions(1, 'Hot', widget.imageList2),
            const SizedBox(
              width: 20,
            ),
            _buildOptions(2, 'Upcoming', widget.imageList3),
          ],
        ),
        _buildSlider(
          _currentIndex,
          widget.imageList1,
          widget.imageList2,
          widget.imageList3,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget _buildOptions(int index, String name, List<String> list) {
    bool active = _currentIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
          _currentImg = -1;
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

  Widget _buildSlider(int currentOptions, List<String> list1,
      List<String> list2, List<String> list3) {
    int length = currentOptions == 0
        ? list1.length
        : (currentOptions == 1 ? list2.length : list3.length);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          child: CarouselSlider.builder(
            carouselController: _controller,
            itemCount: length,
            options: CarouselOptions(
                enlargeCenterPage: true,
                height: AppDimensions.d50h,
                autoPlay: false,
                reverse: false,
                onPageChanged: (int index, CarouselPageChangedReason reason) {
                  setState(() {
                    _currentImg = index;
                  });
                }),
            itemBuilder: (context, index, id) {
              var img_url = currentOptions == 0
                  ? list1[index]
                  : (currentOptions == 1 ? list2[index] : list3[index]);
              return GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    img_url,
                    width: AppDimensions.d70w,
                    fit: BoxFit.fill,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LiveScreen(img_url);
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ...Iterable<int>.generate(length).map(
              (int pageIndex) {
                return GestureDetector(
                  onTap: () {
                    print('IN');
                    print(pageIndex.toString());
                    print(_currentImg.toString());
                    _controller.animateToPage(pageIndex);
                    setState(() {
                      _currentImg = pageIndex;
                    });
                    print(pageIndex.toString());
                    print(_currentImg.toString());
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    height: 10,
                    width: 20,
                    child: Container(
                      width: 16,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: pageIndex == _currentImg
                            ? AppColors.orange2
                            : AppColors.gray,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
