import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class DescriptionBodyComponent extends StatelessWidget {
  const DescriptionBodyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 40),
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