import '../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class RowStarPointsCardsWidgets extends StatelessWidget {
  const RowStarPointsCardsWidgets({Key? key, required this.points}) : super(key: key);

  final double points;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.star, color: ColorUtils.colorUtils.orangeColor, size: 16),
          const SizedBox(width: 3),
          Text(
            "$points",
            style: TextStyle(
              color: ColorUtils.colorUtils.whiteColor,
              fontWeight: FontWeight.bold
            ),
          )
        ]
      ),
    );
  }
}