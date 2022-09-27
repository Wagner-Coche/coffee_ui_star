import 'specified_screen_widget.dart';
import '../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class SpecifiedScreen extends StatefulWidget {
  const SpecifiedScreen({Key? key}) : super(key: key);

  @override
  State<SpecifiedScreen> createState() => _SpecifiedScreenState();
}

class _SpecifiedScreenState extends State<SpecifiedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.colorUtils.primaryColor,
      body: const SpecifiedScreenWidget()
    );
  }
}