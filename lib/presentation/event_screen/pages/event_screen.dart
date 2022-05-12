import 'package:flutter/material.dart';
import 'package:music_app/presentation/event_screen/widgets/event_widget.dart';

import '../../../injection.dart';
import '../bloc/event_bloc.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  _EventScreen createState() => _EventScreen();
}

class _EventScreen extends State<EventScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final EventBloc _eventBloc = getIt();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: EventWidget(),
      ),
    );
  }
}
