import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music_app/data/resources/dimensions.dart';
import '../../../data/resources/colors.dart';
import '../../live_screen/pages/live_screen.dart';

class BuildOptions extends StatefulWidget {
  const BuildOptions({Key? key}) : super(key: key);

  @override
  _BuildOptionsState createState() => _BuildOptionsState();
}

class _BuildOptionsState extends State<BuildOptions> {
  final List<String> imagesList1 = [
    'https://i.pinimg.com/originals/fa/f7/8d/faf78d83138ffcb0e2375f9db7540c95.jpg',
    'https://thumbs.dreamstime.com/b/summer-partyl-poster-design-illustration-party-71357859.jpg',
    'https://farm9.staticflickr.com/8041/28365390952_c123943f2c_o.jpg',
    'https://dcassetcdn.com/design_img/2814604/662683/662683_15448748_2814604_a02672dd_thumbnail.png',
    'https://www.xtremeflyers.com/wp-content/uploads/2019/06/Summer-Paradise-Flyer-Template-369x553.jpg',
    'https://graphicriver.img.customer.envatousercontent.com/files/298399713/590.jpg?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=9f5214c3bfba08d87f63594d6ae11f17',
    'https://graphicriver.img.customer.envatousercontent.com/files/348302951/590.jpg?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=e079559f7d0aec9a9c9f00e25d517593',
  ];

  final List<String> imagesList2 = [
    'https://i.pinimg.com/originals/bc/b9/b2/bcb9b2c63242c484ad0eba092cd44808.jpg',
    'https://images.unsplash.com/photo-1630410139620-15d3a0791a5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cmlvJTIwZGUlMjBqYW5laXJvJTIwYmVhY2h8ZW58MHx8MHx8&w=1000&q=80',
    'https://i.pinimg.com/originals/55/70/cd/5570cdd110f1a7b362eef36fb33b071e.jpg',
    'https://i.pinimg.com/1200x/3a/dd/3b/3add3b2768cde86edbc47b1ef177d720.jpg',
    'https://64.media.tumblr.com/3929e6074c8b4285e8a8b8e809fc5e74/tumblr_ndparehXaA1sjl3qko1_1280.jpg',
    'https://www.dulichhoanmy.com/Upload/images/stories/vong_quanh_nuoc_my/diemden_my/2020/du-lich-my-new-york-1.jpg',
    'https://manager.airline24h.com/Upload/images/da%20nang%2014.jpg',
    'https://images.unsplash.com/photo-1624253321171-1be53e12f5f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8amFwb258ZW58MHx8MHx8&w=1000&q=80',
  ];

  final List<String> imagesList3 = [
    'https://i.pinimg.com/564x/48/e6/c7/48e6c7d09c1a9c4a5ced13aca5095acd.jpg',
    'https://pbs.twimg.com/media/D4BjgQiW4AENc0e.jpg',
    'http://naflingroup.com/wp-content/uploads/EUROPE-TOUR-7DAYS-717x1024.jpeg',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/time-to-travel-flyer-template-design-447e63ec876b6e28fa4e54fcbd4d3b1f_screen.jpg?ts=1637035687',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/travel-agency-template-design-246273adf3a34fcb02402901fed7ed29_screen.jpg?ts=1636979867',
    'https://i.pinimg.com/originals/0b/48/fc/0b48fcaf1a9341fec1cffcf61f6be75e.jpg',
  ];

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
            _buildOptions(0, 'New Event'),
            const SizedBox(
              width: 20,
            ),
            _buildOptions(1, 'Hot'),
            const SizedBox(
              width: 20,
            ),
            _buildOptions(2, 'Upcoming'),
          ],
        ),
        _buildSlider(_currentIndex),
        const SizedBox(
          height: 10,
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

  Widget _buildSlider(int currentOptions) {
    int length = currentOptions == 0
        ? imagesList1.length
        : (currentOptions == 1 ? imagesList2.length : imagesList3.length);
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
            ),
            itemBuilder: (context, index, id) {
              var img_url = currentOptions == 0
                  ? imagesList1[index]
                  : (currentOptions == 1
                      ? imagesList2[index]
                      : imagesList3[index]);
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
