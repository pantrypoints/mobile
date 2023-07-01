import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:prenuer/data/models/feature_model.dart';
import 'package:prenuer/data/providers/feature/i_feature_provider.dart';

class LocalFeatureProvider extends IFeatureProvider {
  @override
  Future<List<FeatureModel>> getFeatures() async {
    final data = await rootBundle.loadString("assets/data/features.json");
    final list = jsonDecode(data) as List;
    return list.map((e) => FeatureModel.fromJson(e)).toList();
  }
}
