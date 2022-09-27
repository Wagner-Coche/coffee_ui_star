import '../../components/body_components/card_horizontal_body_component.dart';
import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class TextSpecialBodyComponent extends StatelessWidget {
  const TextSpecialBodyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, top: 25),
      child: Column(
        children: [
          Text(
            "Special for you",
            style: TextStyle(
              color: ColorUtils.colorUtils.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          ),
          const CardHorizontalBodyComponent(image: "assets/images/pexels-marta-dzedyshko-2067432.jpg")
        ],
      ),
    );
  }
}