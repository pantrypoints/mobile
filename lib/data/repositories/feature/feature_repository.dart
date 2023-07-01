import 'package:prenuer/data/models/feature_model.dart';
import 'package:prenuer/data/providers/feature/i_feature_provider.dart';
import 'package:prenuer/data/repositories/feature/i_feature_repository.dart';

class FeatureRepository extends IFeatureRepository {
  final IFeatureProvider provider;

  FeatureRepository(this.provider);

  @override
  Future<List<FeatureModel>> getFeatures() async {
    return await provider.getFeatures();
  }
}
