import '../../components/header_components/row_icons_header_components.dart';
import 'package:flutter/material.dart';

class HeaderDivisionHomeScreen extends StatelessWidget {
  const HeaderDivisionHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        RowIconsHeaderComponents()
      ]
    );
  }
}