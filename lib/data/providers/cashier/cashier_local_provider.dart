import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:prenuer/data/models/product_model.dart';
import 'package:prenuer/data/providers/cashier/i_cashier_provider.dart';

class CashierLocalProvider extends ICashierProvider {
  @override
  Future<List<ProductModel>> getProducts() async {
    final data = await rootBundle.loadString("assets/data/products.json");
    final list = jsonDecode(data) as List;
    return list.map((e) => ProductModel.fromJson(e)).toList();
  }
}
