import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class InfoDataCoffeeComponent extends StatelessWidget {
  const InfoDataCoffeeComponent({Key? key, required this.title, required this.price, required this.getCoffee}) : super(key: key);

  final String title;
  final double price;
  final double getCoffee;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Cappuccino",
                  style: TextStyle(
                    color: ColorUtils.colorUtils.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "With Oat Milk",
                  style: TextStyle(
                    color: ColorUtils.colorUtils.whiteColor.withOpacity(.6),
                    fontSize: 15,
                    fontWeight: FontWeight.w300
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: ColorUtils.colorUtils.orangeColor, size: 20,),
                    const SizedBox(width: 8),
                    Text(
                      "$price ", 
                      style: TextStyle(
                        color: ColorUtils.colorUtils.whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Text(
                      "($getCoffee)", 
                      style: TextStyle(
                        color: ColorUtils.colorUtils.whiteColor.withOpacity(.3),
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      )
                    )
                  ],
                ),  
              ]
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .13,
                        height: MediaQuery.of(context).size.height * .055,
                        child: ElevatedButton(
                          onPressed: () {}, 
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(right: 3),
                            primary: ColorUtils.colorUtils.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            )
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.coffee_outlined, color: ColorUtils.colorUtils.orangeColor, size: 20,),
                                SizedBox(
                                  child: Text(
                                    "Coffee", 
                                    style: TextStyle(
                                      color: ColorUtils.colorUtils.thirdColor, 
                                      fontSize: 10
                                    )
                                  )
                                )
                              ],
                            ),
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .13,
                        height: MediaQuery.of(context).size.height * .055,
                        child: ElevatedButton(
                          onPressed: () {}, 
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(right: 3),
                            primary: ColorUtils.colorUtils.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            )
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.water_drop_rounded, color: ColorUtils.colorUtils.orangeColor, size: 20,),
                                SizedBox(
                                  child: Text(
                                    "Milk", 
                                    style: TextStyle(
                                      color: ColorUtils.colorUtils.thirdColor, 
                                      fontSize: 10
                                    )
                                  )
                                )
                              ],
                            ),
                          )
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(right: 3),
                      primary: ColorUtils.colorUtils.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                    child: Text("Medium Roasted", style: TextStyle(color: ColorUtils.colorUtils.thirdColor, fontSize: 12),)
                  ),
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}