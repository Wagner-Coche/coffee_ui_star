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
          CardCoffeeWidget(),
          CardCoffeeWidget()
        ],
      ),
    );
  }
}