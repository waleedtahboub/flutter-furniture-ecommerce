import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
abstract class ReviewModel with _$ReviewModel {
  @JsonSerializable(explicitToJson: true)
  factory ReviewModel({
    required String reviewerName,
    required DateTime date,
    required String comment,
    @Default(0.0) double rating,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
