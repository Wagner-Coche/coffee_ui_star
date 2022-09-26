import 'dart:ui';

import '../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class CardCoffeeWidget extends StatelessWidget {
  const CardCoffeeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double blur = 40;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .3,
          width: MediaQuery.of(context).size.width * .42,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(.01), 
                Colors.white.withOpacity(.01), 
                ColorUtils.colorUtils.secondColor,
                ColorUtils.colorUtils.secondColor,
                ColorUtils.colorUtils.secondColor,
                ColorUtils.colorUtils.secondColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
            child: Container(
              decoration: BoxDecoration(
                color: ColorUtils.colorUtils.thirdColor.withOpacity(.2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * .42,
              ),
            ),
          ),
        ),
      ],
    );
  }
}