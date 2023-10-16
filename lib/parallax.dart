import 'package:flutter/material.dart';

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    required Key key,
    required this.top,
    required this.asset,
  }) : super(key: key);

  final double top;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: -45,
        top: top,
        child: Container(
          height: 550,
          width: 900,
          child: Image.asset(
            "assets/$asset.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    ]);
  }
}
