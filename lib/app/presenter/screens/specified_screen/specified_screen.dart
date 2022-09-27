import 'specified_screen_widget.dart';
import '../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class SpecifiedScreen extends StatefulWidget {
  const SpecifiedScreen({
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
  State<SpecifiedScreen> createState() => _SpecifiedScreenState();
}

class _SpecifiedScreenState extends State<SpecifiedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.colorUtils.primaryColor,
      body: SpecifiedScreenWidget(
        image: widget.image,
        points: widget.points,
        titleCoffee: widget.titleCoffee,
        detailCoffee: widget.detailCoffee,
        price: widget.price,
      )
    );
  }
}