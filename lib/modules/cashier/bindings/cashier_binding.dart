import 'package:get/get.dart';
import 'package:prenuer/data/providers/cashier/cashier_local_provider.dart';
import 'package:prenuer/data/providers/cashier/i_cashier_provider.dart';
import 'package:prenuer/data/repositories/cashier/cashier_repository.dart';
import 'package:prenuer/data/repositories/cashier/i_cashier_repository.dart';
import 'package:prenuer/modules/cashier/controllers/cashier_controller.dart';

class CashierBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ICashierProvider>(CashierLocalProvider());
    Get.put<ICashierRepository>(CashierRepository(Get.find()));
    Get.put(CashierController());
  }
}
