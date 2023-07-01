import 'package:json_annotation/json_annotation.dart';

part 'feature_model.g.dart';

@JsonSerializable()
class FeatureModel {
  final String title;
  final String description;
  final String image;

  FeatureModel(
      {required this.title, required this.description, required this.image});

  factory FeatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureModelFromJson(json);
}
