import 'package:flutter/material.dart';
import 'package:ward/utils/utils.dart';

TextStyle _getCairoTextStyle({
  required Color color,
  required FontWeight fontWeight,
  required double fontSize,
}) {
  return TextStyle(
    fontFamily: FontFamily.cairo,
    color: color,
    fontWeight: fontWeight,
    fontSize: fontSize,
  );
}

// bold

TextStyle getCairoBoldStyle({
  required Color color,
  required double fontSize,
}) {
  return _getCairoTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.bold,
    color: color,
  );
}

// regular
TextStyle getCairoRegularStyle({
  required Color color,
  required double fontSize,
}) {
  return _getCairoTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.regular,
    color: color,
  );
}

TextStyle getCairoMediumStyle({
  required Color color,
  required double fontSize,
}) {
  return _getCairoTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.medium,
    color: color,
  );
}

// light style
TextStyle getCairoLightStyle({
  required Color color,
  required double fontSize,
}) {
  return _getCairoTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.light,
    color: color,
  );
}

List<BoxShadow> myShadow({
  double opacity = 0.3,
}) =>
    [
      BoxShadow(
        color: Colors.grey.withOpacity(opacity),
        spreadRadius: 1,
        blurRadius: 4,
        offset: const Offset(0, 1), // changes position of shadow
      ),
    ];
