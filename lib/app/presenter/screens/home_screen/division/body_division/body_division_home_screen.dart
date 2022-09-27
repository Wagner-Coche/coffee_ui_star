import '../../components/body_components/text_special_body_component.dart';
import '../../components/body_components/cards_coffee_body_component.dart';
import '../../components/body_components/description_body_component.dart';
import '../../components/body_components/option_scroll_body_component.dart';
import '../../components/body_components/textfield_search_body_component.dart';
import 'package:flutter/material.dart';

class BodyDivisionHomeScreen extends StatelessWidget {
  const BodyDivisionHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        DescriptionBodyComponent(),
        TextFieldSearchBodyComponent(),
        OptionScrollBodyComponent(),
        CardsCoffeeBodyComponent(),
        TextSpecialBodyComponent(),
      ],
    );
  }
}