import 'package:flutter/material.dart';
import 'package:music_app/data/resources/dimensions.dart';
import 'package:music_app/presentation/login_screen/pages/login_screen.dart';
import '../../../data/models/slide.dart';
import '../../../data/resources/colors.dart';
import '../widgets/continue_button.dart';
import '../widgets/slider_dots.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              AppColors.black1,
              AppColors.black2,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              _buildSkip(),
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      itemCount: slideList.length,
                      onPageChanged: _onPageChanged,
                      itemBuilder: (context, index) {
                        return _buildBody(index);
                      },
                    ),
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 30,
                          ),
                          child: _currentPage == 2
                              ? const ContinueButton()
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    for (int i = 0; i < slideList.length; i++)
                                      if (i == _currentPage)
                                        SlideDots(true)
                                      else
                                        SlideDots(false)
                                  ],
                                ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(int index) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 54),
          child: Container(
            width: AppDimensions.d65w,
            height: AppDimensions.d45h,
            child: Image.asset(
              slideList[index].imgUrl,
              fit: BoxFit.contain,
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.orange1,
                  AppColors.orange2,
                ],
              ),
              color: AppColors.white,
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          child: Text(
            slideList[index].content,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 26,
            ),
            textAlign: TextAlign.center,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 26),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          child: Text(
            slideList[index].description,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 54),
        )
      ],
    );
  }

  Widget _buildSkip() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: _currentPage == 0
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                )
              ],
            )
          : const SizedBox(
              height: 10,
            ),
    );
  }
}
