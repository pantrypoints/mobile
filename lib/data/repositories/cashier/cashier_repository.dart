
import 'package:prenuer/data/models/product_model.dart';
import 'package:prenuer/data/providers/cashier/i_cashier_provider.dart';
import 'package:prenuer/data/repositories/cashier/i_cashier_repository.dart';

class CashierRepository extends ICashierRepository {
  final ICashierProvider provider;

  CashierRepository(this.provider);

  @override
  Future<List<ProductModel>> getProducts() async {
    return await provider.getProducts();
  }
}
