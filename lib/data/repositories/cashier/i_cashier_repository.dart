
import 'package:prenuer/data/models/product_model.dart';

abstract class ICashierRepository{
  Future<List<ProductModel>> getProducts();
}