import 'package:flutter/material.dart';
import 'package:ward/utils/utils.dart';

ThemeData mainLightTheme() => ThemeData(
  primaryColor: ColorManager.primary,
  fontFamily: 'Inter Regular',
  scaffoldBackgroundColor: ColorManager.white,
  // dividerTheme: const DividerThemeData(
  //     color: ColorManager.lightGrey, thickness: .8, space: 40),
  backgroundColor: ColorManager.white,
  // primarySwatch: ColorManager.blueMaterialColor,
  // appBarTheme: const AppBarTheme(
  //   centerTitle: true,
  //   titleSpacing: 0.0,
  //   titleTextStyle: TextStyle(
  //     color: ColorManager.white,
  //     fontSize: 18.0,
  //     fontFamily: 'Cairo Regular',
  //     fontWeight: FontWeight.bold,
  //   ),
  //   backgroundColor: ColorManager.primaryColor,
  //   shadowColor: ColorManager.white,
  //   elevation: 0.0,
  //   iconTheme: IconThemeData(color: ColorManager.white),
  //   actionsIconTheme: IconThemeData(
  //     color: ColorManager.white,
  //   ),
  //   systemOverlayStyle: SystemUiOverlayStyle(
  //     // statusBarColor: ColorManager.primaryColor,
  //     // statusBarIconBrightness: Brightness.light,
  //     // statusBarBrightness: Brightness.light,
  //     // statusBarColor: ColorManager.white,
  //     // statusBarIconBrightness: Brightness.dark,
  //     statusBarBrightness: Brightness.dark,
  //     statusBarColor: Colors.transparent,
  //     statusBarIconBrightness: Brightness.dark,
  //     systemNavigationBarIconBrightness: Brightness.dark,
  //   ),
  // ),
  // textTheme: const TextTheme(
  //   headline1: TextStyle(
  //     color: ColorManager.primaryColor,
  //     fontSize: 18.0,
  //     fontWeight: FontWeight.normal,
  //   ),
  //   headline2: TextStyle(
  //     color: ColorManager.grey,
  //     fontSize: 16.0,
  //     fontWeight: FontWeight.normal,
  //   ),
  //   subtitle1: TextStyle(
  //     color: ColorManager.grey,
  //     fontSize: 14.0,
  //     fontWeight: FontWeight.normal,
  //   ),
  //   subtitle2: TextStyle(
  //     color: ColorManager.lightGrey,
  //     fontSize: 14.0,
  //     fontWeight: FontWeight.normal,
  //   ),
  //   bodyText1: TextStyle(
  //     color: ColorManager.primaryColor,
  //     fontSize: 14.0,
  //     fontWeight: FontWeight.normal,
  //   ),
  //   bodyText2: TextStyle(
  //     color: ColorManager.primaryColor,
  //     fontSize: 16.0,
  //     fontWeight: FontWeight.normal,
  //   ),
  //   caption: TextStyle(
  //     color: ColorManager.grey,
  //     fontSize: 16.0,
  //     fontWeight: FontWeight.bold,
  //   ),
  // ),
  // bottomSheetTheme: const BottomSheetThemeData(
  //   elevation: 5.0,
  //   backgroundColor: ColorManager.white,
  // ),
  // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //   backgroundColor: ColorManager.white,
  //   selectedIconTheme: IconThemeData(color: ColorManager.primaryColor),
  //   unselectedIconTheme: IconThemeData(color: ColorManager.lightGrey),
  //   unselectedItemColor: ColorManager.lightGrey,
  //   selectedItemColor: ColorManager.primaryColor,
  //   elevation: 2.0,
  // ),
);

// ThemeData mainDarkTheme() => ThemeData(
//   fontFamily: 'Inter Regular',
//   scaffoldBackgroundColor: ColorManager.darkModeBackgroundColor,
//   backgroundColor: ColorManager.darkModeWhite,
//   dividerTheme: const DividerThemeData(
//       color: ColorManager.black, thickness: 0.8, space: 20),
//   appBarTheme: const AppBarTheme(
//     centerTitle: true,
//     titleSpacing: 0.0,
//     titleTextStyle: TextStyle(
//       color: ColorManager.lightGrey,
//       fontSize: 18.0,
//       fontFamily: 'Cairo Regular',
//       fontWeight: FontWeight.bold,
//     ),
//     backgroundColor: ColorManager.primaryColor,
//     shadowColor: ColorManager.black,
//     elevation: 0.0,
//     iconTheme: IconThemeData(color: ColorManager.lightGrey),
//     actionsIconTheme: IconThemeData(
//       color: ColorManager.lightGrey,
//     ),
//     systemOverlayStyle: SystemUiOverlayStyle(
//       statusBarColor: ColorManager.primaryColor,
//       statusBarIconBrightness: Brightness.light,
//       statusBarBrightness: Brightness.dark,
//     ),
//   ),
//   textTheme: const TextTheme(
//     headline1: TextStyle(
//       color: ColorManager.lightGrey,
//       fontSize: 18.0,
//       fontWeight: FontWeight.normal,
//     ),
//     headline2: TextStyle(
//       color: ColorManager.grey,
//       fontSize: 16.0,
//       fontWeight: FontWeight.normal,
//     ),
//     subtitle1: TextStyle(
//       color: ColorManager.grey,
//       fontSize: 14.0,
//       fontWeight: FontWeight.normal,
//     ),
//     subtitle2: TextStyle(
//       color: ColorManager.lightGrey,
//       fontSize: 14.0,
//       fontWeight: FontWeight.normal,
//     ),
//     bodyText1: TextStyle(
//       color: ColorManager.lightGrey,
//       fontSize: 14.0,
//       fontWeight: FontWeight.normal,
//     ),
//     bodyText2: TextStyle(
//       color: ColorManager.lightGrey,
//       fontSize: 16.0,
//       fontWeight: FontWeight.normal,
//     ),
//     caption: TextStyle(
//       color: ColorManager.lightWhite,
//       fontSize: 16.0,
//       fontWeight: FontWeight.bold,
//     ),
//   ),
//   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//     backgroundColor: ColorManager.darkModeWhite,
//     selectedIconTheme: IconThemeData(color: ColorManager.superLightGrey),
//     unselectedIconTheme: IconThemeData(color: ColorManager.grey),
//     unselectedItemColor: ColorManager.grey,
//     selectedItemColor: ColorManager.superLightGrey,
//     elevation: 2.0,
//   ),
//   bottomSheetTheme: const BottomSheetThemeData(
//     elevation: 5.0,
//     backgroundColor: ColorManager.darkModeWhite,
//   ),
//   dividerColor: ColorManager.backgroundColor,
//   colorScheme:
//   ColorScheme.fromSwatch(primarySwatch: ColorManager.blueMaterialColor)
//       .copyWith(secondary: ColorManager.primaryColor),
// );