import '../../components/body_components/description_coffee_component.dart';
import '../../components/body_components/info_data_coffee_component.dart';
import '../../components/body_components/blur_image_container_component.dart';
import '../header_division/header_division_specified_screen.dart';
import '../../components/body_components/image_container_specified_screen_component.dart';
import 'package:flutter/material.dart';

class BodyDivisionSpecifiedScreen extends StatelessWidget {
  const BodyDivisionSpecifiedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: const <Widget>[
                      ImageContainerSpecifiedScreenComponent(image: "assets/images/pexels-tyler-nix-2396220.jpg"),
                      HeaderDivisionSpecifiedScreen(),
                    ],
                  ),
                ),
                SizedBox(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: const <Widget>[
                      BlurImageContainerComponent(),
                      InfoDataCoffeeComponent(title: "Cappuccino", price: 4.5, getCoffee: 6.768)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const DescriptionCoffeeComponent()
        ]
      ),
    );
  }
}