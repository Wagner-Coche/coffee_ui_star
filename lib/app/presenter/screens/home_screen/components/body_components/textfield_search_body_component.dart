import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class TextFieldSearchBodyComponent extends StatelessWidget {
  const TextFieldSearchBodyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
      decoration: BoxDecoration(
        color: ColorUtils.colorUtils.secondColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        cursorColor: ColorUtils.colorUtils.thirdColor,
        decoration: InputDecoration(
          hintText: "Find Your Coffee...",
          hintStyle: TextStyle(color: ColorUtils.colorUtils.thirdColor),
          prefixIcon: Container(
            margin: const EdgeInsets.only(left: 20, right: 12),
            child: Icon(Icons.search, color: ColorUtils.colorUtils.thirdColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(
              color: ColorUtils.colorUtils.whiteColor,
              width: 2.5
            )
          )
        ),
      ),
    );
  }
}