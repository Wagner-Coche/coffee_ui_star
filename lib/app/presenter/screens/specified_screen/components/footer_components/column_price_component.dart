import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class ColumnPriceComponent extends StatelessWidget {
  const ColumnPriceComponent({Key? key, required this.price}) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Price",
          style: TextStyle(
            color: ColorUtils.colorUtils.whiteColor.withOpacity(.4),
            fontSize: 16,
            fontWeight: FontWeight.w500  
          ),
        ),
        const SizedBox(height: 10),
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
      ],
    );
  }
}