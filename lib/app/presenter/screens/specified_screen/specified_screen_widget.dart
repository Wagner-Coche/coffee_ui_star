import '../specified_screen/division/footer_division/footer_division_specified_screen.dart';
import '../specified_screen/division/body_division/body_division_specified_screen.dart';
import 'package:flutter/material.dart';

class SpecifiedScreenWidget extends StatelessWidget {
  const SpecifiedScreenWidget({
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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: <Widget>[
            BodyDivisionSpecifiedScreen(
              image: image,
              points: points,
              titleCoffee: titleCoffee,
              detailCoffee: detailCoffee,
              price: price,
            ),
            FooterDivisionSpecifiedScreen(price: price)
          ]
        )
      ),
    );
  }
}