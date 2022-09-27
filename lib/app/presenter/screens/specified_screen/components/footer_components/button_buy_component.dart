import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class ButtonBuyComponent extends StatelessWidget {
  const ButtonBuyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width * .70,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          onPrimary: ColorUtils.colorUtils.blackColor,
          primary: ColorUtils.colorUtils.orangeColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
          ),
        ), 
        child: Text(
          "Buy Now", 
          style: TextStyle(
            color: ColorUtils.colorUtils.whiteColor,
            fontSize: 18, 
            fontWeight: FontWeight.w500
          )
        )
      ),
    );
  }
}