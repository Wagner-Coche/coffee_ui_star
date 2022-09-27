import '../home_screen/division/body_division/body_division_home_screen.dart';
import '../home_screen/division/header_division/header_division_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: const <Widget>[
            HeaderDivisionHomeScreen(),
            BodyDivisionHomeScreen(),
          ]
        )
      ),
    );
  }
}