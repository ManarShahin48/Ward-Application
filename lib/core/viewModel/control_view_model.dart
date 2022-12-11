import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ward/view/cart_view.dart';
import 'package:ward/view/home_view.dart';
import 'package:ward/view/profile_view.dart';

class ControlViewModel extends GetxController {
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;

  Widget currentScreen = HomeView();

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          currentScreen = HomeView();
          break;
        }
      case 1:
        {
          currentScreen = const CartView();
          break;
        }
      case 2:
        {
          currentScreen = const ProfileView();
          break;
        }
    }
    update();
  }
}
