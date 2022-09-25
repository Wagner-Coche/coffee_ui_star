import '../../../../utils/color_utils.dart';
import 'package:flutter/material.dart';

class RowIconsHeaderComponents extends StatefulWidget {
  const RowIconsHeaderComponents({Key? key}) : super(key: key);

  @override
  State<RowIconsHeaderComponents> createState() => _RowIconsHeaderComponentsState();
}

class _RowIconsHeaderComponentsState extends State<RowIconsHeaderComponents> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: ColorUtils.colorUtils.secondColor,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            child: IconButton(
              splashRadius: 26,
              splashColor: ColorUtils.colorUtils.secondColor,
              onPressed: () {}, 
              icon: Icon(Icons.menu, color: ColorUtils.colorUtils.thirdColor)
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.fromBorderSide(
                BorderSide(color: ColorUtils.colorUtils.thirdColor)
              ),
              image: const DecorationImage(
                image: AssetImage("assets/images/image.jpg"),
                fit: BoxFit.cover
              )
            ),
          )
        ],
      )
    );
  }
}