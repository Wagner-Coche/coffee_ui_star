import '../../components/footer_components/button_buy_component.dart';
import '../../components/footer_components/column_price_component.dart';
import 'package:flutter/material.dart';

class FooterDivisionSpecifiedScreen extends StatelessWidget {
  const FooterDivisionSpecifiedScreen({Key? key, required this.price}) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ColumnPriceComponent(price: price),
          const ButtonBuyComponent()
        ] 
      ),
    );
  }
} 