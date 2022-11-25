import 'package:flutter/material.dart';
import 'package:ward/utils/utils.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.text = '',
    this.color = ColorManager.black,
    this.fontSize = SizeManager.s16,
    this.alignment = Alignment.topLeft,
    this.maxLine = 1,
    this.height = 1,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final Alignment alignment;
  final int maxLine;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: getCairoRegularStyle(
          color: color,
          fontSize: fontSize,
        ),
        maxLines: maxLine,
      ),
    );
  }
}
