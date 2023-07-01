import 'package:prenuer/data/models/feature_model.dart';

abstract class IFeatureRepository{
  Future<List<FeatureModel>> getFeatures();
}