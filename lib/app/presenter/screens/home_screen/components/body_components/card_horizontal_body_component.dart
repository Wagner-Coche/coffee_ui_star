import 'dart:ui';

import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class CardHorizontalBodyComponent extends StatelessWidget {
  const CardHorizontalBodyComponent({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    const double blur = 20;

    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorUtils.colorUtils.thirdColor.withOpacity(.2)
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .4,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  )
                )
              ),
              Container(
                width: 150,
                margin: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "5 Coffee Beans You Must Try!",
                      style: TextStyle(
                        color: ColorUtils.colorUtils.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      )
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(bottom: 5),
                      child: ElevatedButton(
                        onPressed: () {}, 
                        style: ElevatedButton.styleFrom(
                          primary: ColorUtils.colorUtils.orangeColor,
                          onPrimary: ColorUtils.colorUtils.blackColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        child: Center(
                          child: Text(
                            "More...", 
                            style: TextStyle(
                              color: ColorUtils.colorUtils.whiteColor,
                              fontSize: 16
                            )
                          ),
                        )
                      ),
                    )
                  ]
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}