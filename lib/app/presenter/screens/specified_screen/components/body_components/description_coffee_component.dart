import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class DescriptionCoffeeComponent extends StatelessWidget {
  const DescriptionCoffeeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Description",
            style: TextStyle(
              color: ColorUtils.colorUtils.whiteColor.withOpacity(.4),
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 20),
            child: Text(
              "A Cappuccino is a Coffee-Bases drink made primarily from espresso and milk, so is best in world.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: ColorUtils.colorUtils.whiteColor.withOpacity(.2),
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }
}