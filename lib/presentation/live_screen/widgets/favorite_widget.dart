import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class FavoriteDetailWidget extends StatefulWidget {
  const FavoriteDetailWidget({Key? key}) : super(key: key);

  @override
  _FavoriteDetailWidgetState createState() => _FavoriteDetailWidgetState();
}

class _FavoriteDetailWidgetState extends State<FavoriteDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.favorite,
          color: AppColors.white,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          '98.5K',
          style: TextStyle(color: AppColors.white, fontSize: 11),
        )
      ],
    );
  }
}
