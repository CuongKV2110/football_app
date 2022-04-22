import 'package:flutter/material.dart';
import '../widgets/build_events.dart';
import '../widgets/build_events_bar.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  _EventScreen createState() => _EventScreen();
}

class _EventScreen extends State<EventScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              BuildEventsBar(),
              BuildEvents(),
            ],
          )),
    );
  }
}
