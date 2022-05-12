import 'package:flutter/material.dart';
import '../widgets/build_home_bar.dart';
import '../widgets/build_home_body.dart';

class BuildHomeScreen extends StatefulWidget {
  const BuildHomeScreen({Key? key}) : super(key: key);

  @override
  _BuildHomeScreenState createState() => _BuildHomeScreenState();
}

class _BuildHomeScreenState extends State<BuildHomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            BuildHomeBar(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            BuildHomeBody(),
          ],
        ),
      ),
    );
  }
}
