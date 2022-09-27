import '../home_screen/division/footer_division/footer_division_home_screen.dart';
import '../../utils/color_utils.dart';
import 'home_screen_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.colorUtils.primaryColor,
      body: const HomeScreenWidget(),
      bottomNavigationBar: const FooterDivisionHomeScreen(),
    );
  }
}