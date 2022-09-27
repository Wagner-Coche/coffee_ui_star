import '../../components/body_components/choices_specified_screen_component.dart';
import '../../components/body_components/description_coffee_component.dart';
import '../../components/body_components/info_data_coffee_component.dart';
import '../../components/body_components/blur_image_container_component.dart';
import '../header_division/header_division_specified_screen.dart';
import '../../components/body_components/image_container_specified_screen_component.dart';
import 'package:flutter/material.dart';

class BodyDivisionSpecifiedScreen extends StatelessWidget {
  const BodyDivisionSpecifiedScreen({
    Key? key, 
    required this.image, 
    required this.points, 
    required this.titleCoffee, 
    required this.detailCoffee, 
    required this.price}) : super(key: key);

  final String image;
  final double points;
  final String titleCoffee;
  final String detailCoffee;
  final double price;

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
                    children: <Widget>[
                      ImageContainerSpecifiedScreenComponent(image: image),
                      const HeaderDivisionSpecifiedScreen(),
                    ],
                  ),
                ),
                SizedBox(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      const BlurImageContainerComponent(),
                      InfoDataCoffeeComponent(title: titleCoffee, price: price, getCoffee: 6.768)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const DescriptionCoffeeComponent(),
          const ChoicesSpecifiedScreenComponent()
        ]
      ),
    );
  }
}