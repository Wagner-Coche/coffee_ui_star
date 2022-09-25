import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class DescriptionHeaderComponent extends StatelessWidget {
  const DescriptionHeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Text(
        "Find the best coffee for you",
        style: TextStyle(
          fontSize: 44,
          color: ColorUtils.colorUtils.whiteColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}