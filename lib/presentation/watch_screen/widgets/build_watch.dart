import 'package:flutter/material.dart';
import 'package:music_app/presentation/watch_screen/widgets/watch_content.dart';
import '../../profile_screen/widgets/build_content.dart';

class BuildWatch extends StatelessWidget {
  String img_url1 =
      'https://i.pinimg.com/originals/fa/f7/8d/faf78d83138ffcb0e2375f9db7540c95.jpg';
  String img_url2 =
      'https://thumbs.dreamstime.com/b/summer-partyl-poster-design-illustration-party-71357859.jpg';
  String string1 =
      'My trip to China started Bejing, where I stayed in a beautiful hotel called uhaskh asdhasdh ashasdhas diash a';
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Column(
            children: [
              WatchContent('Live'),
              SizedBox(
                height: 10,
              ),
              WatchContent('Current'),
              SizedBox(
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
