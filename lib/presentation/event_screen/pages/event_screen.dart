import 'package:flutter/material.dart';
import 'package:music_app/data/resources/dimensions.dart';
import 'package:shimmer/shimmer.dart';
import '../widgets/build_events.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  _EventScreen createState() => _EventScreen();
}

class _EventScreen extends State<EventScreen>
    with AutomaticKeepAliveClientMixin {
  bool refresh = false;
  int _index = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: RefreshIndicator(
          displacement: 0,
          onRefresh: () async {
            await Future.delayed(const Duration(milliseconds: 500));
            setState(() {
              refresh = !refresh;
            });
            await Future.delayed(const Duration(seconds: 1));
            setState(() {
              refresh = !refresh;
              _index++;
            });
          },
          child: refresh
              ? BuildShimmer()
              : BuildEvents(
                  key: Key('${_index}BuildEvents'),
                ),
        ),
      ),
    );
  }

  Widget BuildShimmer() {
    return Container(
      width: AppDimensions.d100w,
      height: AppDimensions.d100h,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const SizedBox(height: 300),
            );
          },
        ),
      ),
    );
  }
}
