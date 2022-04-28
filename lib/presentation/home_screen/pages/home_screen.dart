import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/presentation/event_screen/pages/event_screen.dart';
import 'package:music_app/presentation/home_screen/pages/build_home_screen.dart';
import 'package:music_app/presentation/profile_screen/pages/profile_screen.dart';
import 'package:music_app/presentation/shop_screen/pages/shop_screen.dart';
import 'package:music_app/presentation/watch_screen/pages/watch_screen.dart';

import '../../../data/resources/colors.dart';
import '../widgets/build_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _controller = PageController(
    initialPage: 0,
  );

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
          drawer: const BuildDrawer(),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
              builder: (context) => IconButton(
                icon: new Icon(
                  Icons.menu_outlined,
                  color: AppColors.white,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const ProfileScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    child: Image.asset(
                      'images/avt.jpg',
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                width: 14,
              )
            ],
          ),
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _controller,
            children: const [
              BuildHomeScreen(),
              EventScreen(),
              WatchScreen(),
              ShopScreen(),
            ],
          ),
          bottomNavigationBar: _buildBottom(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget _buildBottom() {
    return BottomNavigationBar(
      backgroundColor: AppColors.black1,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.orange2,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedItemColor: AppColors.gray,
      currentIndex: _currentIndex,
      onTap: (int index) {
        _controller.jumpToPage(index);
        setState(() {
          _currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Ionicons.home_outline,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Ionicons.calendar_outline,
          ),
          label: 'Event',
          backgroundColor: AppColors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Ionicons.radio_outline,
          ),
          label: 'Watch',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Ionicons.bag_outline,
          ),
          label: 'Shop',
        ),
      ],
    );
  }
}
