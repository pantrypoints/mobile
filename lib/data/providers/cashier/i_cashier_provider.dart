
import 'package:prenuer/data/models/product_model.dart';

abstract class ICashierProvider{
  Future<List<ProductModel>> getProducts();
}