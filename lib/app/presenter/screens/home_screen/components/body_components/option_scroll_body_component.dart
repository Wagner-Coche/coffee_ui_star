import '../../widgets/text_option_widget.dart';
import 'package:flutter/material.dart';

class OptionScrollBodyComponent extends StatelessWidget {
  const OptionScrollBodyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .044),
        child: Row(
          children: const <Widget>[
            TextOptionWidget(title: "Cappuccino", active: true),
            SizedBox(width: 30),
            TextOptionWidget(title: "Espresso", active: false),
            SizedBox(width: 30),
            TextOptionWidget(title: "Latte", active: false),
            SizedBox(width: 30),
            TextOptionWidget(title: "Flat Wave", active: false),
            SizedBox(width: 30),
            TextOptionWidget(title: "Cardafio", active: false),
            SizedBox(width: 30),
            TextOptionWidget(title: "Meccinada", active: false)
          ],
        ),
      ),
    );
  }
}