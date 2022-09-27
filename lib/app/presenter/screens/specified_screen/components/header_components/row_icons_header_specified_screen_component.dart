import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class RowIconsHeaderSpecifiedScreenComponent extends StatelessWidget {
  const RowIconsHeaderSpecifiedScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              }, 
              style: ElevatedButton.styleFrom(
                primary: ColorUtils.colorUtils.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              child: Icon(Icons.arrow_back_ios, color: ColorUtils.colorUtils.thirdColor, size: 15,)
            ),
          ),
          SizedBox(
            width: 40,
            child: ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(right: 3),
                primary: ColorUtils.colorUtils.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              child: Icon(Icons.favorite, color: ColorUtils.colorUtils.thirdColor, size: 15)
            ),
          )
        ],
      ),
    );
  }
}