import 'dart:ui';

import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class BlurImageContainerComponent extends StatelessWidget {
  const BlurImageContainerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double blur = 15;

    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorUtils.colorUtils.secondColor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}