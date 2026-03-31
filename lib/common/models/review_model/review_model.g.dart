// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => _ReviewModel(
  reviewerName: json['reviewerName'] as String,
  date: DateTime.parse(json['date'] as String),
  comment: json['comment'] as String,
  rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'reviewerName': instance.reviewerName,
      'date': instance.date.toIso8601String(),
      'comment': instance.comment,
      'rating': instance.rating,
    };
