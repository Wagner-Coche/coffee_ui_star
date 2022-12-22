import 'package:flutter/material.dart';

class ImageContainerSpecifiedScreenComponent extends StatelessWidget {
  const ImageContainerSpecifiedScreenComponent({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: image,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}