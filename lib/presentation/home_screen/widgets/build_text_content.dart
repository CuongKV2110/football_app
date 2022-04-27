import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class BuildTextContent extends StatelessWidget {
  String content;

  BuildTextContent(this.content);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            content == 'Catch'
                ? 'Catch Up'
                : (content == 'Top' ? 'Top Picks ' : 'Browers By Category'),
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
