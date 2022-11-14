import 'package:flutter/material.dart';
import 'package:ward/utils/utils.dart';

TextStyle _getInterTextStyle({
  required Color color,
  required FontWeight fontWeight,
  required double fontSize,
}) {
  return TextStyle(
    fontFamily: FontFamily.inter,
    color: color,
    fontWeight: fontWeight,
    fontSize: fontSize,
  );
}

TextStyle _getNoorTextStyle({
  required Color color,
  required FontWeight fontWeight,
  required double fontSize,
}) {
  return TextStyle(
    fontFamily: FontFamily.noor,
    color: color,
    fontWeight: fontWeight,
    fontSize: fontSize,
  );
}

// bold

TextStyle getInterBoldStyle({
  required Color color,
  required double fontSize,
}) {
  return _getInterTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.bold,
    color: color,
  );
}

// regular
TextStyle getInterRegularStyle({
  required Color color,
  required double fontSize,
}) {
  return _getInterTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.regular,
    color: color,
  );
}

TextStyle getInterMediumStyle({
  required Color color,
  required double fontSize,
}) {
  return _getInterTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.medium,
    color: color,
  );
}

// light style
TextStyle getInterLightStyle({
  required Color color,
  required double fontSize,
}) {
  return _getInterTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.light,
    color: color,
  );
}

// bold noor
TextStyle getNorTextStyle({
  required double fontSize,
  required Color color,
}) {
  return _getNoorTextStyle(
    color: color,
    fontWeight: FontWeightManager.bold,
    fontSize: fontSize,
  );
}

List<BoxShadow> myShadow({
  double opacity = 0.3,
}) =>
    [
      BoxShadow(
        color: false
            // appDarkModelEnabled()
            ? Colors.black.withOpacity(opacity)
            : Colors.grey.withOpacity(opacity),
        spreadRadius: 1,
        blurRadius: 4,
        offset: const Offset(0, 1), // changes position of shadow
      ),
    ];
