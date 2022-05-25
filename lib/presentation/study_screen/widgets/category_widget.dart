import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/presentation/study_screen/models/category_result.dart';
import 'package:music_app/presentation/study_screen/pages/study_screen.dart';

class CategoryWidget extends StatefulWidget {
  String icon;
  String title;
  Color? color;

  CategoryWidget(this.icon, this.title, {this.color});

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: widget.color ?? Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.gray1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SvgPicture.network(
                    widget.icon,
                    color:
                        widget.color != null ? AppColors.white : AppColors.text,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Expanded(
                  child: Text(
                    widget.title.toLowerCase().capitalize(),
                    style: TextStyle(
                      fontSize: 13,
                      color: widget.color != null
                          ? AppColors.white
                          : AppColors.text,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

/*Positioned(
top: 9,
right: 9,
child: CircleAvatar(
backgroundColor: AppColors.white,
radius: 10,
child: Center(
child: Icon(
Ionicons.help_outline,
color: AppColors.text,
size: 14,
),
),
),
)*/
