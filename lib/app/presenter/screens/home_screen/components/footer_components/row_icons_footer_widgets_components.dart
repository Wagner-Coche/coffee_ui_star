import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class RowIconsFooterWidgetsComponents extends StatelessWidget {
  const RowIconsFooterWidgetsComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.home, color: ColorUtils.colorUtils.orangeColor, size: 26)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.shopping_bag, color: ColorUtils.colorUtils.primaryColor, size: 26)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.favorite, color: ColorUtils.colorUtils.primaryColor, size: 26)
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.notifications, color: ColorUtils.colorUtils.primaryColor, size: 26)
          )
        ],
      ),
    );
  }
}