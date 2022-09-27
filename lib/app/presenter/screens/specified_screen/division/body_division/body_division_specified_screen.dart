import '../../components/header_components/row_icons_header_specified_screen_component.dart';
import '../../components/body_components/image_container_specified_screen_component.dart';
import 'package:flutter/material.dart';

class BodyDivisionSpecifiedScreen extends StatelessWidget {
  const BodyDivisionSpecifiedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          child: Stack(
            alignment: Alignment.topCenter,
            children: const <Widget>[
              ImageContainerSpecifiedScreenComponent(image: "assets/images/pexels-tyler-nix-2396220.jpg"),
              RowIconsHeaderSpecifiedScreenComponent()
            ],
          ),
        )
      ]
    );
  }
}