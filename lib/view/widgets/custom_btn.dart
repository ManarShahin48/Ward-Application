import 'package:flutter/material.dart';
import 'package:ward/utils/utils.dart';

class CustomButton extends Container {
  CustomButton({
    Key? key,
    required onClick,
    required String label,
    Color textColor = ColorManager.white,
    Color? backColor,
    Color backgroundColor = ColorManager.primary,
    double fontSize = 16.0,
    double iconSize = 18.0,
    double height = 50.0,
    double width = double.infinity,
    double radius = 5,
    enableBorder = false,
    borderColor,
    String? assetIcon,
    IconData? icon,
  }) : super(
    key: key,
    height: height,
    width: width,
    clipBehavior: Clip.antiAlias,
    padding: const EdgeInsets.all(.5),
    decoration: BoxDecoration(
      color: backgroundColor,
      boxShadow: myShadow(opacity: .2),
      border: Border.all(
          color: borderColor ?? backgroundColor,
          width: enableBorder ? 1.0 : 0.0),
      borderRadius: BorderRadius.circular(radius),
    ),
    child: MaterialButton(
      onPressed: onClick,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(label,
              style: getInterBoldStyle(color: textColor, fontSize: fontSize)),
          if (assetIcon != null)
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                assetIcon,
                height: iconSize,
                fit: BoxFit.fill,
                color: textColor,
              ),
            ),
          if (icon != null)
            Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  icon,
                  color: textColor,
                  size: iconSize,
                )),
        ],
      ),
    ),
  );
}