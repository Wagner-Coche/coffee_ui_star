import '../specified_screen/division/body_division/body_division_specified_screen.dart';
import 'package:flutter/material.dart';

class SpecifiedScreenWidget extends StatelessWidget {
  const SpecifiedScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: const <Widget>[
          BodyDivisionSpecifiedScreen()
        ]
      )
    );
  }
}