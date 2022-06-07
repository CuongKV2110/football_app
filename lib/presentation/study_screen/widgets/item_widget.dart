import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/presentation/study_screen/pages/description_screen.dart';

class ItemWidget extends StatefulWidget {
  String icon;
  String title;
  String description;
  bool check;
  Color? color;

  ItemWidget(this.icon, this.title, this.description, this.check, {this.color});

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
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
        widget.check == true
            ? Positioned(
                top: 9,
                right: 9,
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) {
                        return DescriptionScreen(
                            widget.title, widget.description);
                      }),
                    );
                  },
                  child: const CircleAvatar(
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
                ),
              )
            : const SizedBox()
      ],
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
