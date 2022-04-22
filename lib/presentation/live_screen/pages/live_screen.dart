import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/data/resources/dimensions.dart';
import 'package:music_app/presentation/live_screen/widgets/comment_box_widget.dart';
import 'package:music_app/presentation/live_screen/widgets/content_widget.dart';
import '../widgets/build_image_widget3.dart';
import '../widgets/interactive_widget.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  _LiveScreenState createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          body: Stack(
            children: [
              BuildImageWidget3(),
              Positioned(
                left: 18,
                top: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: AppColors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  width: AppDimensions.d100w,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ContentWidget(),
                            const InteractiveWidget(),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CommentBoxWidget()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
