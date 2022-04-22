import 'package:flutter/material.dart';

import '../../../data/resources/colors.dart';

class ContentWidget extends StatelessWidget {
  String content =
      'Real Madrid vs Chelsea. Quarter Final UEFA Champions League 2022 #fyp #foryou #viral';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '@Kieu Van Cuong',
            style: TextStyle(
              fontSize: 14.7,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.white,
              )),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.music_note,
                color: AppColors.white,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Nang Am Xa Dan Remix',
                style: TextStyle(color: AppColors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
