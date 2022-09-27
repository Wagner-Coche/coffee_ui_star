import '../../components/footer_components/row_icons_footer_widgets_components.dart';
import '../../components/footer_components/blur_card_footer_component.dart';
import 'package:flutter/material.dart';

class FooterDivisionHomeScreen extends StatelessWidget {
  const FooterDivisionHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: const [
        BlurCardFooterComponent(),
        RowIconsFooterWidgetsComponents()
      ],
    );
  }
}