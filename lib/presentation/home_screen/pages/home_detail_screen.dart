import 'package:flutter/material.dart';
import '../../../data/resources/colors.dart';
import '../widgets/build_home_detail.dart';

class HomeDetailScreen extends StatefulWidget {
  String img_url;

  HomeDetailScreen(this.img_url);
  @override
  _HomeDetailScreenState createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: BuildHomeDetail(widget.img_url),
        ),
      ),
    );
  }
}
