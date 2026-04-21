// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModel {

@HiveField(0) String get id;@HiveField(1) String get imageUrl;@HiveField(2) String get name;@HiveField(3) String get categoryId;@HiveField(4) String get categoryName;@HiveField(5) double get rating;@HiveField(6) double get basePrice;@HiveField(7) double get salePrice;@HiveField(8) bool get isBestseller;@HiveField(9) bool get isFlashDeal;@HiveField(10) bool get is50PercentOff;@JsonKey(includeFromJson: false, includeToJson: false)@HiveField(11) bool get isFavorite;@HiveField(12) String get description;@HiveField(13) List<ReviewModel> get reviews;@HiveField(14) List<String> get colors;@HiveField(15) DateTime get createdAt;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.isBestseller, isBestseller) || other.isBestseller == isBestseller)&&(identical(other.isFlashDeal, isFlashDeal) || other.isFlashDeal == isFlashDeal)&&(identical(other.is50PercentOff, is50PercentOff) || other.is50PercentOff == is50PercentOff)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.reviews, reviews)&&const DeepCollectionEquality().equals(other.colors, colors)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,name,categoryId,categoryName,rating,basePrice,salePrice,isBestseller,isFlashDeal,is50PercentOff,isFavorite,description,const DeepCollectionEquality().hash(reviews),const DeepCollectionEquality().hash(colors),createdAt);

@override
String toString() {
  return 'ProductModel(id: $id, imageUrl: $imageUrl, name: $name, categoryId: $categoryId, categoryName: $categoryName, rating: $rating, basePrice: $basePrice, salePrice: $salePrice, isBestseller: $isBestseller, isFlashDeal: $isFlashDeal, is50PercentOff: $is50PercentOff, isFavorite: $isFavorite, description: $description, reviews: $reviews, colors: $colors, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String imageUrl,@HiveField(2) String name,@HiveField(3) String categoryId,@HiveField(4) String categoryName,@HiveField(5) double rating,@HiveField(6) double basePrice,@HiveField(7) double salePrice,@HiveField(8) bool isBestseller,@HiveField(9) bool isFlashDeal,@HiveField(10) bool is50PercentOff,@JsonKey(includeFromJson: false, includeToJson: false)@HiveField(11) bool isFavorite,@HiveField(12) String description,@HiveField(13) List<ReviewModel> reviews,@HiveField(14) List<String> colors,@HiveField(15) DateTime createdAt
});




}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? name = null,Object? categoryId = null,Object? categoryName = null,Object? rating = null,Object? basePrice = null,Object? salePrice = null,Object? isBestseller = null,Object? isFlashDeal = null,Object? is50PercentOff = null,Object? isFavorite = null,Object? description = null,Object? reviews = null,Object? colors = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as double,salePrice: null == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double,isBestseller: null == isBestseller ? _self.isBestseller : isBestseller // ignore: cast_nullable_to_non_nullable
as bool,isFlashDeal: null == isFlashDeal ? _self.isFlashDeal : isFlashDeal // ignore: cast_nullable_to_non_nullable
as bool,is50PercentOff: null == is50PercentOff ? _self.is50PercentOff : is50PercentOff // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,colors: null == colors ? _self.colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String imageUrl, @HiveField(2)  String name, @HiveField(3)  String categoryId, @HiveField(4)  String categoryName, @HiveField(5)  double rating, @HiveField(6)  double basePrice, @HiveField(7)  double salePrice, @HiveField(8)  bool isBestseller, @HiveField(9)  bool isFlashDeal, @HiveField(10)  bool is50PercentOff, @JsonKey(includeFromJson: false, includeToJson: false)@HiveField(11)  bool isFavorite, @HiveField(12)  String description, @HiveField(13)  List<ReviewModel> reviews, @HiveField(14)  List<String> colors, @HiveField(15)  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.imageUrl,_that.name,_that.categoryId,_that.categoryName,_that.rating,_that.basePrice,_that.salePrice,_that.isBestseller,_that.isFlashDeal,_that.is50PercentOff,_that.isFavorite,_that.description,_that.reviews,_that.colors,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String imageUrl, @HiveField(2)  String name, @HiveField(3)  String categoryId, @HiveField(4)  String categoryName, @HiveField(5)  double rating, @HiveField(6)  double basePrice, @HiveField(7)  double salePrice, @HiveField(8)  bool isBestseller, @HiveField(9)  bool isFlashDeal, @HiveField(10)  bool is50PercentOff, @JsonKey(includeFromJson: false, includeToJson: false)@HiveField(11)  bool isFavorite, @HiveField(12)  String description, @HiveField(13)  List<ReviewModel> reviews, @HiveField(14)  List<String> colors, @HiveField(15)  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that.id,_that.imageUrl,_that.name,_that.categoryId,_that.categoryName,_that.rating,_that.basePrice,_that.salePrice,_that.isBestseller,_that.isFlashDeal,_that.is50PercentOff,_that.isFavorite,_that.description,_that.reviews,_that.colors,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String imageUrl, @HiveField(2)  String name, @HiveField(3)  String categoryId, @HiveField(4)  String categoryName, @HiveField(5)  double rating, @HiveField(6)  double basePrice, @HiveField(7)  double salePrice, @HiveField(8)  bool isBestseller, @HiveField(9)  bool isFlashDeal, @HiveField(10)  bool is50PercentOff, @JsonKey(includeFromJson: false, includeToJson: false)@HiveField(11)  bool isFavorite, @HiveField(12)  String description, @HiveField(13)  List<ReviewModel> reviews, @HiveField(14)  List<String> colors, @HiveField(15)  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.imageUrl,_that.name,_that.categoryId,_that.categoryName,_that.rating,_that.basePrice,_that.salePrice,_that.isBestseller,_that.isFlashDeal,_that.is50PercentOff,_that.isFavorite,_that.description,_that.reviews,_that.colors,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProductModel implements ProductModel {
   _ProductModel({@HiveField(0) required this.id, @HiveField(1) required this.imageUrl, @HiveField(2) required this.name, @HiveField(3) required this.categoryId, @HiveField(4) required this.categoryName, @HiveField(5) required this.rating, @HiveField(6) required this.basePrice, @HiveField(7) required this.salePrice, @HiveField(8) this.isBestseller = false, @HiveField(9) this.isFlashDeal = false, @HiveField(10) this.is50PercentOff = false, @JsonKey(includeFromJson: false, includeToJson: false)@HiveField(11) this.isFavorite = false, @HiveField(12) required this.description, @HiveField(13) required final  List<ReviewModel> reviews, @HiveField(14) required final  List<String> colors, @HiveField(15) required this.createdAt}): _reviews = reviews,_colors = colors;
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String imageUrl;
@override@HiveField(2) final  String name;
@override@HiveField(3) final  String categoryId;
@override@HiveField(4) final  String categoryName;
@override@HiveField(5) final  double rating;
@override@HiveField(6) final  double basePrice;
@override@HiveField(7) final  double salePrice;
@override@JsonKey()@HiveField(8) final  bool isBestseller;
@override@JsonKey()@HiveField(9) final  bool isFlashDeal;
@override@JsonKey()@HiveField(10) final  bool is50PercentOff;
@override@JsonKey(includeFromJson: false, includeToJson: false)@HiveField(11) final  bool isFavorite;
@override@HiveField(12) final  String description;
 final  List<ReviewModel> _reviews;
@override@HiveField(13) List<ReviewModel> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

 final  List<String> _colors;
@override@HiveField(14) List<String> get colors {
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_colors);
}

@override@HiveField(15) final  DateTime createdAt;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.salePrice, salePrice) || other.salePrice == salePrice)&&(identical(other.isBestseller, isBestseller) || other.isBestseller == isBestseller)&&(identical(other.isFlashDeal, isFlashDeal) || other.isFlashDeal == isFlashDeal)&&(identical(other.is50PercentOff, is50PercentOff) || other.is50PercentOff == is50PercentOff)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._reviews, _reviews)&&const DeepCollectionEquality().equals(other._colors, _colors)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,name,categoryId,categoryName,rating,basePrice,salePrice,isBestseller,isFlashDeal,is50PercentOff,isFavorite,description,const DeepCollectionEquality().hash(_reviews),const DeepCollectionEquality().hash(_colors),createdAt);

@override
String toString() {
  return 'ProductModel(id: $id, imageUrl: $imageUrl, name: $name, categoryId: $categoryId, categoryName: $categoryName, rating: $rating, basePrice: $basePrice, salePrice: $salePrice, isBestseller: $isBestseller, isFlashDeal: $isFlashDeal, is50PercentOff: $is50PercentOff, isFavorite: $isFavorite, description: $description, reviews: $reviews, colors: $colors, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String imageUrl,@HiveField(2) String name,@HiveField(3) String categoryId,@HiveField(4) String categoryName,@HiveField(5) double rating,@HiveField(6) double basePrice,@HiveField(7) double salePrice,@HiveField(8) bool isBestseller,@HiveField(9) bool isFlashDeal,@HiveField(10) bool is50PercentOff,@JsonKey(includeFromJson: false, includeToJson: false)@HiveField(11) bool isFavorite,@HiveField(12) String description,@HiveField(13) List<ReviewModel> reviews,@HiveField(14) List<String> colors,@HiveField(15) DateTime createdAt
});




}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? name = null,Object? categoryId = null,Object? categoryName = null,Object? rating = null,Object? basePrice = null,Object? salePrice = null,Object? isBestseller = null,Object? isFlashDeal = null,Object? is50PercentOff = null,Object? isFavorite = null,Object? description = null,Object? reviews = null,Object? colors = null,Object? createdAt = null,}) {
  return _then(_ProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as double,salePrice: null == salePrice ? _self.salePrice : salePrice // ignore: cast_nullable_to_non_nullable
as double,isBestseller: null == isBestseller ? _self.isBestseller : isBestseller // ignore: cast_nullable_to_non_nullable
as bool,isFlashDeal: null == isFlashDeal ? _self.isFlashDeal : isFlashDeal // ignore: cast_nullable_to_non_nullable
as bool,is50PercentOff: null == is50PercentOff ? _self.is50PercentOff : is50PercentOff // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,colors: null == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
