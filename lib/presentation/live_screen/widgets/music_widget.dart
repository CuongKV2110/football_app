import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MusicWidget extends StatelessWidget {
  const MusicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      child: Image.asset('images/music.png'),
    );
  }
}
