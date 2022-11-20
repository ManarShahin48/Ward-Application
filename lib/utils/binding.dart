import 'package:get/get.dart';
import 'package:ward/core/viewModel/auth_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    // Get.lazyPut(() => ControlViewModel());
    // Get.lazyPut(() => HomeViewModel());
  }
}