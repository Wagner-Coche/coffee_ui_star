import 'dart:ui';

import 'row_star_points_cards_widgets.dart';
import '../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class CardCoffeeWidget extends StatelessWidget {
  const CardCoffeeWidget({Key? key, required this.image, required this.points}) : super(key: key);

  final String image;
  final double points;

  @override
  Widget build(BuildContext context) {
    const double blur = 40;

    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      width: MediaQuery.of(context).size.width * .42,
      child: Stack(
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
          SizedBox(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 14, right: 14, top: 14),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .18,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorUtils.colorUtils.secondColor.withOpacity(.2),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)
                              )
                            ),
                            child: SizedBox(
                              height: 22,
                              width: 60,
                              child: RowStarPointsCardsWidgets(points: points),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}