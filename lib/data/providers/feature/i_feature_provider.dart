import 'package:prenuer/data/models/feature_model.dart';

abstract class IFeatureProvider{
  Future<List<FeatureModel>> getFeatures();
}