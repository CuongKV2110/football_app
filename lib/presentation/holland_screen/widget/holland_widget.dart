import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/presentation/holland_screen/models/holland_option.dart';

class HollandWidget extends StatefulWidget {
  HollandOption hollandOption;
  int index;

  HollandWidget(this.hollandOption, this.index);

  @override
  _HollandWidgetState createState() => _HollandWidgetState();
}

class _HollandWidgetState extends State<HollandWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          (widget.index + 1).toString() +
              ". " +
              cutText(widget.hollandOption.hollandResult.content),
          style: TextStyle(
            color: widget.hollandOption.value == 0
                ? AppColors.gray
                : AppColors.green3,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                    activeColor: AppColors.green3,
                    value: 1,
                    groupValue: widget.hollandOption.value,
                    onChanged: (value) {
                      setState(() {
                        widget.hollandOption.value =
                            int.parse(value.toString());
                      });
                    },
                  ),
                  Text(
                    'Hoàn toàn sai',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.hollandOption.value == 0
                          ? AppColors.gray
                          : AppColors.black1,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                    activeColor: AppColors.green3,
                    value: 2,
                    groupValue: widget.hollandOption.value,
                    onChanged: (value) {
                      setState(() {
                        widget.hollandOption.value =
                            int.parse(value.toString());
                      });
                    },
                  ),
                  Text(
                    'Sai',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.hollandOption.value == 0
                          ? AppColors.gray
                          : AppColors.black1,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                    activeColor: AppColors.green3,
                    value: 3,
                    groupValue: widget.hollandOption.value,
                    onChanged: (value) {
                      setState(() {
                        widget.hollandOption.value =
                            int.parse(value.toString());
                      });
                    },
                  ),
                  Text(
                    'Phân vân',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.hollandOption.value == 0
                          ? AppColors.gray
                          : AppColors.black1,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                    activeColor: AppColors.green3,
                    value: 4,
                    groupValue: widget.hollandOption.value,
                    onChanged: (value) {
                      setState(() {
                        widget.hollandOption.value =
                            int.parse(value.toString());
                      });
                    },
                  ),
                  Text(
                    'Đúng',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.hollandOption.value == 0
                          ? AppColors.gray
                          : AppColors.black1,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                    activeColor: AppColors.green3,
                    value: 5,
                    groupValue: widget.hollandOption.value,
                    onChanged: (value) {
                      setState(() {
                        widget.hollandOption.value =
                            int.parse(value.toString());
                      });
                    },
                  ),
                  Text(
                    'Hoàn toàn đúng',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.hollandOption.value == 0
                          ? AppColors.gray
                          : AppColors.black1,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

String cutText(String text) {
  String resultText = text.replaceAll('<p>', '').replaceAll('</p>', '');
  return resultText;
}
