import 'package:flutter/cupertino.dart';
import 'package:music_app/presentation/home_screen/widgets/build_text_content.dart';
import 'package:music_app/presentation/home_screen/widgets/catch_up_widget.dart';
import 'package:music_app/presentation/home_screen/widgets/category_widget.dart';
import 'package:music_app/presentation/home_screen/widgets/top_pick_widget.dart';

import 'build_options.dart';

class BuildHomeBody extends StatefulWidget {
  const BuildHomeBody({Key? key}) : super(key: key);

  @override
  _BuildHomeBodyState createState() => _BuildHomeBodyState();
}

class _BuildHomeBodyState extends State<BuildHomeBody> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          BuildOptions(),
          SizedBox(
            height: 20,
          ),
          BuildTextContent('Catch'),
          const SizedBox(
            height: 16,
          ),
          CatchUpWidget(),
          const SizedBox(
            height: 36,
          ),
          BuildTextContent('Top'),
          const SizedBox(
            height: 16,
          ),
          TopPickWidget(),
          const SizedBox(
            height: 36,
          ),
          BuildTextContent('Category'),
          const SizedBox(
            height: 16,
          ),
          CategoryWidget(),
        ],
      ),
    );
  }
}
