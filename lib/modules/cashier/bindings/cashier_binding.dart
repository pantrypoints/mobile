import 'package:get/get.dart';
import 'package:prenuer/modules/cashier/controllers/cashier_controller.dart';

class CashierBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CashierController());
  }
}
