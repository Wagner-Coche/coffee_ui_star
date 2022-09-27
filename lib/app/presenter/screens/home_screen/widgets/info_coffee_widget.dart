import '../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class InfoCoffeeWidget extends StatelessWidget {
  const InfoCoffeeWidget({Key? key, required this.price}) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("\$", style: TextStyle(color: ColorUtils.colorUtils.orangeColor, fontSize: 20)),
              const SizedBox(width: 2),
              Text(
                "$price", 
                style: TextStyle(
                  color: ColorUtils.colorUtils.whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
              )
            ],
          ),
          SizedBox(
            width: 38,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: ColorUtils.colorUtils.orangeColor,
                onPrimary: ColorUtils.colorUtils.blackColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ), 
              child: Text(
                "+", 
                style: TextStyle(
                  color: ColorUtils.colorUtils.whiteColor,
                  fontWeight: FontWeight.bold
                )
              )
            ),
          )
        ],
      ),  
    );
  }
}