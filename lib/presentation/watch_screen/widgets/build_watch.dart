import 'package:flutter/material.dart';
import 'package:music_app/presentation/watch_screen/widgets/watch_content.dart';

class BuildWatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Column(
            children: [
              WatchContent('Live'),
              const SizedBox(
                height: 10,
              ),
              WatchContent('Current'),
              const SizedBox(
                height: 10,
              ),
              WatchContent('Follower'),
            ],
          );
        },
        childCount: 1,
      ),
    );
  }
}
