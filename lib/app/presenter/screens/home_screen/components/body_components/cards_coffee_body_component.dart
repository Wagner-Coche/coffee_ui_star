import '../../widgets/card_coffee_widget.dart';
import 'package:flutter/material.dart';

class CardsCoffeeBodyComponent extends StatelessWidget {
  const CardsCoffeeBodyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .030),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CardCoffeeWidget(image: "assets/images/pexels-ryan-horn-2318017.jpg", points: 4.5, titleCoffee: "Cappucinno", detailCoffee: "With Oat Milk", price: 4.20),
          CardCoffeeWidget(image: "assets/images/pexels-georgie-devlin-8631270.jpg", points: 3.1, titleCoffee: "Cappucinno", detailCoffee: "With Chocolate", price: 3.14)
        ],
      ),
    );
  }
}