import 'package:episod1/core/utlis/color_constant.dart';
import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final double? height, width;
  final EdgeInsets? padding;

  const BorderBox({Key? key, required this.child, this.height, this.width, this.padding }) : super(key: key);


 @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: colorGrey.withAlpha(40),
          width: 2
        ),
      ),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(child: child),
    );
  }
}
