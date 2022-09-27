import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class ChoicesSpecifiedScreenComponent extends StatelessWidget {
  const ChoicesSpecifiedScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Size",
            style: TextStyle(
              color: ColorUtils.colorUtils.whiteColor.withOpacity(.4),
              fontSize: 16,
              fontWeight: FontWeight.w500              
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * .052,
                  width: MediaQuery.of(context).size.width * .25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: ColorUtils.colorUtils.orangeColor,
                      width: 2
                    )
                  ),
                  child: ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      onPrimary: ColorUtils.colorUtils.orangeColor,
                      primary: ColorUtils.colorUtils.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                    child: Text("S", style: TextStyle(color: ColorUtils.colorUtils.orangeColor),)
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .052,
                  width: MediaQuery.of(context).size.width * .25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      onPrimary: ColorUtils.colorUtils.black12Color,
                      primary: ColorUtils.colorUtils.secondColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ), 
                    child: Text("M", style: TextStyle(color: ColorUtils.colorUtils.whiteColor))
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .052,
                  width: MediaQuery.of(context).size.width * .25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      onPrimary: ColorUtils.colorUtils.black12Color,
                      primary: ColorUtils.colorUtils.secondColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ), 
                    child: Text("L", style: TextStyle(color: ColorUtils.colorUtils.whiteColor),)
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