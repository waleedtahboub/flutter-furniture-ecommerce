import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
@HiveType(typeId: 2)
abstract class ReviewModel with _$ReviewModel {
  @JsonSerializable(explicitToJson: true)
  factory ReviewModel({
    @HiveField(0) required String reviewerName,
    @HiveField(1) required DateTime date,
    @HiveField(2) required String comment,
    @HiveField(3) @Default(0.0) double rating,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
