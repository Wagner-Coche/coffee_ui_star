import '../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class TextOptionWidget extends StatelessWidget {
  const TextOptionWidget({Key? key, required this.title, required this.active}) : super(key: key);

  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: active ? ColorUtils.colorUtils.orangeColor : ColorUtils.colorUtils.thirdColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )
          ),
          const SizedBox(height: 5),
          active ? ClipOval(
            child: Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: ColorUtils.colorUtils.orangeColor,
              ),
            ),
          ) : const SizedBox(
              height: 8,
              width: 8,
          )
        ]
      )
    );
  }
}