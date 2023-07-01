import 'package:get/get.dart';
import 'package:prenuer/data/models/feature_model.dart';
import 'package:prenuer/data/providers/feature/feature_local_provider.dart';
import 'package:prenuer/data/providers/feature/i_feature_provider.dart';
import 'package:prenuer/data/repositories/feature/feature_repository.dart';
import 'package:prenuer/data/repositories/feature/i_feature_repository.dart';

class HomeController extends GetxController {
  RxList<FeatureModel> features = <FeatureModel>[].obs;
  RxBool hasFeature = false.obs;

  @override
  void onInit() {
    _initialize();
    super.onInit();
  }

  Future<void> _initialize() async {
    _initializeFeatures();
  }

  Future<void> _initializeFeatures() async {
    Get.put<IFeatureProvider>(LocalFeatureProvider());
    Get.put<IFeatureRepository>(FeatureRepository(Get.find()));
    _fetchFeatures();
  }

  Future<void> _fetchFeatures() async{
    final repository = Get.find<IFeatureRepository>();
    features(await repository.getFeatures());
    hasFeature(features.isNotEmpty);
  }

  Future<void> refreshData() async{
    _fetchFeatures();
  }
}
