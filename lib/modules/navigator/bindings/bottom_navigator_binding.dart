import 'package:get/get.dart';
import 'package:prenuer/modules/home/controllers/home_controller.dart';
import 'package:prenuer/modules/navigator/controllers/bottom_navigator_controller.dart';

class BottomNavigatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigatorController>(
      () => BottomNavigatorController(),
    );
    Get.lazyPut(() => HomeController());
  }
}
