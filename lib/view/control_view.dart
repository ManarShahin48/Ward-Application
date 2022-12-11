import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ward/core/viewModel/auth_view_model.dart';
import 'package:ward/core/viewModel/control_view_model.dart';
import 'package:ward/utils/assets_manager.dart';
import 'package:ward/view/auth/login_view.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user == null)
          ? LoginView()
          : GetBuilder<ControlViewModel>(
              builder: (controller) => Scaffold(
                body: controller.currentScreen,
                bottomNavigationBar: bottomNavigationBar(),
              ),
            );
    });
  }
}

Widget bottomNavigationBar() {
  return GetBuilder<ControlViewModel>(
    init: ControlViewModel(),
    builder: (controller) => BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text("Explore"),
            ),
            label: '',
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SvgPicture.asset(IconManager.googleLogo),
            )),
        BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text("Cart"),
            ),
            label: '',
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SvgPicture.asset(IconManager.googleLogo),
            )),
        BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text("Account"),
            ),
            label: '',
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SvgPicture.asset(IconManager.googleLogo),
            )),
      ],
      currentIndex: controller.navigatorValue,
      onTap: (index) {
        controller.changeSelectedValue(index);
      },
      elevation: 0,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.grey.shade50,
    ),
  );
}
