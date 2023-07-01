import 'package:get/get.dart';
import 'package:prenuer/data/models/product_model.dart';
import 'package:prenuer/data/repositories/cashier/i_cashier_repository.dart';

class CashierController extends GetxController{
  RxBool isClosing = false.obs;
  RxList<ProductModel> products = <ProductModel>[].obs;
  RxBool hasProduct = false.obs;

  @override
  void onInit() {
    _initialize();
    super.onInit();
  }

  Future<void> _initialize() async{
    _initializeProducts();
  }

  Future<void> _initializeProducts() async{
    _fetchProducts();
  }

  Future<void> _fetchProducts() async{
    final repository = Get.find<ICashierRepository>();
    products.value =  await repository.getProducts();
    hasProduct(products.isNotEmpty);
  }
}