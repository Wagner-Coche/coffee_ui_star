import 'dart:ui';

import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class BlurCardFooterComponent extends StatelessWidget {
  const BlurCardFooterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double blur = 1;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorUtils.colorUtils.primaryColor,
                ColorUtils.colorUtils.primaryColor,
              ]
            )
          ),
        ),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
            child: Container(
              decoration: BoxDecoration(
                color: ColorUtils.colorUtils.thirdColor.withOpacity(.2),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}