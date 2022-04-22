import 'package:flutter/material.dart';

import '../widgets/build_watch.dart';

import '../widgets/build_watch_bar.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({Key? key}) : super(key: key);

  @override
  _WatchScreenState createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          BuildWatchBar(),
          BuildWatch(),
        ],
      ),
    );
  }
}
