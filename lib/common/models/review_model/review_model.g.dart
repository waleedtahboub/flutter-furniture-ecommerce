// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReviewModelAdapter extends TypeAdapter<ReviewModel> {
  @override
  final typeId = 2;

  @override
  ReviewModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReviewModel(
      reviewerName: fields[0] as String,
      date: fields[1] as DateTime,
      comment: fields[2] as String,
      rating: fields[3] == null ? 0.0 : (fields[3] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, ReviewModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.reviewerName)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.comment)
      ..writeByte(3)
      ..write(obj.rating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
