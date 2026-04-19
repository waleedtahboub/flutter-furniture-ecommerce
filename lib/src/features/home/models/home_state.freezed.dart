// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedSection<T> {

 List<T> get items; bool get isFetchingMore; bool get hasMore; DocumentSnapshot? get lastDoc;
/// Create a copy of PaginatedSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<T, PaginatedSection<T>> get copyWith => _$PaginatedSectionCopyWithImpl<T, PaginatedSection<T>>(this as PaginatedSection<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedSection<T>&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.lastDoc, lastDoc) || other.lastDoc == lastDoc));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),isFetchingMore,hasMore,lastDoc);

@override
String toString() {
  return 'PaginatedSection<$T>(items: $items, isFetchingMore: $isFetchingMore, hasMore: $hasMore, lastDoc: $lastDoc)';
}


}

/// @nodoc
abstract mixin class $PaginatedSectionCopyWith<T,$Res>  {
  factory $PaginatedSectionCopyWith(PaginatedSection<T> value, $Res Function(PaginatedSection<T>) _then) = _$PaginatedSectionCopyWithImpl;
@useResult
$Res call({
 List<T> items, bool isFetchingMore, bool hasMore, DocumentSnapshot? lastDoc
});




}
/// @nodoc
class _$PaginatedSectionCopyWithImpl<T,$Res>
    implements $PaginatedSectionCopyWith<T, $Res> {
  _$PaginatedSectionCopyWithImpl(this._self, this._then);

  final PaginatedSection<T> _self;
  final $Res Function(PaginatedSection<T>) _then;

/// Create a copy of PaginatedSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? isFetchingMore = null,Object? hasMore = null,Object? lastDoc = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,lastDoc: freezed == lastDoc ? _self.lastDoc : lastDoc // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedSection].
extension PaginatedSectionPatterns<T> on PaginatedSection<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedSection<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedSection<T> value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedSection<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> items,  bool isFetchingMore,  bool hasMore,  DocumentSnapshot? lastDoc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedSection() when $default != null:
return $default(_that.items,_that.isFetchingMore,_that.hasMore,_that.lastDoc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> items,  bool isFetchingMore,  bool hasMore,  DocumentSnapshot? lastDoc)  $default,) {final _that = this;
switch (_that) {
case _PaginatedSection():
return $default(_that.items,_that.isFetchingMore,_that.hasMore,_that.lastDoc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> items,  bool isFetchingMore,  bool hasMore,  DocumentSnapshot? lastDoc)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedSection() when $default != null:
return $default(_that.items,_that.isFetchingMore,_that.hasMore,_that.lastDoc);case _:
  return null;

}
}

}

/// @nodoc


class _PaginatedSection<T> extends PaginatedSection<T> {
  const _PaginatedSection({final  List<T> items = const [], this.isFetchingMore = false, this.hasMore = true, this.lastDoc}): _items = items,super._();
  

 final  List<T> _items;
@override@JsonKey() List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isFetchingMore;
@override@JsonKey() final  bool hasMore;
@override final  DocumentSnapshot? lastDoc;

/// Create a copy of PaginatedSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedSectionCopyWith<T, _PaginatedSection<T>> get copyWith => __$PaginatedSectionCopyWithImpl<T, _PaginatedSection<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedSection<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.lastDoc, lastDoc) || other.lastDoc == lastDoc));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),isFetchingMore,hasMore,lastDoc);

@override
String toString() {
  return 'PaginatedSection<$T>(items: $items, isFetchingMore: $isFetchingMore, hasMore: $hasMore, lastDoc: $lastDoc)';
}


}

/// @nodoc
abstract mixin class _$PaginatedSectionCopyWith<T,$Res> implements $PaginatedSectionCopyWith<T, $Res> {
  factory _$PaginatedSectionCopyWith(_PaginatedSection<T> value, $Res Function(_PaginatedSection<T>) _then) = __$PaginatedSectionCopyWithImpl;
@override @useResult
$Res call({
 List<T> items, bool isFetchingMore, bool hasMore, DocumentSnapshot? lastDoc
});




}
/// @nodoc
class __$PaginatedSectionCopyWithImpl<T,$Res>
    implements _$PaginatedSectionCopyWith<T, $Res> {
  __$PaginatedSectionCopyWithImpl(this._self, this._then);

  final _PaginatedSection<T> _self;
  final $Res Function(_PaginatedSection<T>) _then;

/// Create a copy of PaginatedSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? isFetchingMore = null,Object? hasMore = null,Object? lastDoc = freezed,}) {
  return _then(_PaginatedSection<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,lastDoc: freezed == lastDoc ? _self.lastDoc : lastDoc // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,
  ));
}


}

/// @nodoc
mixin _$HomeState {

 List<BannerModel> get banners; List<CategoryModel> get categories;// Using the generic section model for all product lists
 PaginatedSection<ProductModel> get allProducts; PaginatedSection<ProductModel> get bestSellers; PaginatedSection<ProductModel> get flashDeals; PaginatedSection<ProductModel> get fiftyPercentOff; PaginatedSection<ProductModel> get categoryProducts; String? get errorMessage;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.banners, banners)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.allProducts, allProducts) || other.allProducts == allProducts)&&(identical(other.bestSellers, bestSellers) || other.bestSellers == bestSellers)&&(identical(other.flashDeals, flashDeals) || other.flashDeals == flashDeals)&&(identical(other.fiftyPercentOff, fiftyPercentOff) || other.fiftyPercentOff == fiftyPercentOff)&&(identical(other.categoryProducts, categoryProducts) || other.categoryProducts == categoryProducts)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(banners),const DeepCollectionEquality().hash(categories),allProducts,bestSellers,flashDeals,fiftyPercentOff,categoryProducts,errorMessage);

@override
String toString() {
  return 'HomeState(banners: $banners, categories: $categories, allProducts: $allProducts, bestSellers: $bestSellers, flashDeals: $flashDeals, fiftyPercentOff: $fiftyPercentOff, categoryProducts: $categoryProducts, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<BannerModel> banners, List<CategoryModel> categories, PaginatedSection<ProductModel> allProducts, PaginatedSection<ProductModel> bestSellers, PaginatedSection<ProductModel> flashDeals, PaginatedSection<ProductModel> fiftyPercentOff, PaginatedSection<ProductModel> categoryProducts, String? errorMessage
});


$PaginatedSectionCopyWith<ProductModel, $Res> get allProducts;$PaginatedSectionCopyWith<ProductModel, $Res> get bestSellers;$PaginatedSectionCopyWith<ProductModel, $Res> get flashDeals;$PaginatedSectionCopyWith<ProductModel, $Res> get fiftyPercentOff;$PaginatedSectionCopyWith<ProductModel, $Res> get categoryProducts;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banners = null,Object? categories = null,Object? allProducts = null,Object? bestSellers = null,Object? flashDeals = null,Object? fiftyPercentOff = null,Object? categoryProducts = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
banners: null == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,allProducts: null == allProducts ? _self.allProducts : allProducts // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,bestSellers: null == bestSellers ? _self.bestSellers : bestSellers // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,flashDeals: null == flashDeals ? _self.flashDeals : flashDeals // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,fiftyPercentOff: null == fiftyPercentOff ? _self.fiftyPercentOff : fiftyPercentOff // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,categoryProducts: null == categoryProducts ? _self.categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get allProducts {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.allProducts, (value) {
    return _then(_self.copyWith(allProducts: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get bestSellers {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.bestSellers, (value) {
    return _then(_self.copyWith(bestSellers: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get flashDeals {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.flashDeals, (value) {
    return _then(_self.copyWith(flashDeals: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get fiftyPercentOff {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.fiftyPercentOff, (value) {
    return _then(_self.copyWith(fiftyPercentOff: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get categoryProducts {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.categoryProducts, (value) {
    return _then(_self.copyWith(categoryProducts: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BannerModel> banners,  List<CategoryModel> categories,  PaginatedSection<ProductModel> allProducts,  PaginatedSection<ProductModel> bestSellers,  PaginatedSection<ProductModel> flashDeals,  PaginatedSection<ProductModel> fiftyPercentOff,  PaginatedSection<ProductModel> categoryProducts,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.banners,_that.categories,_that.allProducts,_that.bestSellers,_that.flashDeals,_that.fiftyPercentOff,_that.categoryProducts,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BannerModel> banners,  List<CategoryModel> categories,  PaginatedSection<ProductModel> allProducts,  PaginatedSection<ProductModel> bestSellers,  PaginatedSection<ProductModel> flashDeals,  PaginatedSection<ProductModel> fiftyPercentOff,  PaginatedSection<ProductModel> categoryProducts,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.banners,_that.categories,_that.allProducts,_that.bestSellers,_that.flashDeals,_that.fiftyPercentOff,_that.categoryProducts,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BannerModel> banners,  List<CategoryModel> categories,  PaginatedSection<ProductModel> allProducts,  PaginatedSection<ProductModel> bestSellers,  PaginatedSection<ProductModel> flashDeals,  PaginatedSection<ProductModel> fiftyPercentOff,  PaginatedSection<ProductModel> categoryProducts,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.banners,_that.categories,_that.allProducts,_that.bestSellers,_that.flashDeals,_that.fiftyPercentOff,_that.categoryProducts,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({final  List<BannerModel> banners = const [], final  List<CategoryModel> categories = const [], this.allProducts = const PaginatedSection<ProductModel>(), this.bestSellers = const PaginatedSection<ProductModel>(), this.flashDeals = const PaginatedSection<ProductModel>(), this.fiftyPercentOff = const PaginatedSection<ProductModel>(), this.categoryProducts = const PaginatedSection<ProductModel>(), this.errorMessage}): _banners = banners,_categories = categories,super._();
  

 final  List<BannerModel> _banners;
@override@JsonKey() List<BannerModel> get banners {
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banners);
}

 final  List<CategoryModel> _categories;
@override@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

// Using the generic section model for all product lists
@override@JsonKey() final  PaginatedSection<ProductModel> allProducts;
@override@JsonKey() final  PaginatedSection<ProductModel> bestSellers;
@override@JsonKey() final  PaginatedSection<ProductModel> flashDeals;
@override@JsonKey() final  PaginatedSection<ProductModel> fiftyPercentOff;
@override@JsonKey() final  PaginatedSection<ProductModel> categoryProducts;
@override final  String? errorMessage;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&const DeepCollectionEquality().equals(other._banners, _banners)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.allProducts, allProducts) || other.allProducts == allProducts)&&(identical(other.bestSellers, bestSellers) || other.bestSellers == bestSellers)&&(identical(other.flashDeals, flashDeals) || other.flashDeals == flashDeals)&&(identical(other.fiftyPercentOff, fiftyPercentOff) || other.fiftyPercentOff == fiftyPercentOff)&&(identical(other.categoryProducts, categoryProducts) || other.categoryProducts == categoryProducts)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_banners),const DeepCollectionEquality().hash(_categories),allProducts,bestSellers,flashDeals,fiftyPercentOff,categoryProducts,errorMessage);

@override
String toString() {
  return 'HomeState(banners: $banners, categories: $categories, allProducts: $allProducts, bestSellers: $bestSellers, flashDeals: $flashDeals, fiftyPercentOff: $fiftyPercentOff, categoryProducts: $categoryProducts, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<BannerModel> banners, List<CategoryModel> categories, PaginatedSection<ProductModel> allProducts, PaginatedSection<ProductModel> bestSellers, PaginatedSection<ProductModel> flashDeals, PaginatedSection<ProductModel> fiftyPercentOff, PaginatedSection<ProductModel> categoryProducts, String? errorMessage
});


@override $PaginatedSectionCopyWith<ProductModel, $Res> get allProducts;@override $PaginatedSectionCopyWith<ProductModel, $Res> get bestSellers;@override $PaginatedSectionCopyWith<ProductModel, $Res> get flashDeals;@override $PaginatedSectionCopyWith<ProductModel, $Res> get fiftyPercentOff;@override $PaginatedSectionCopyWith<ProductModel, $Res> get categoryProducts;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banners = null,Object? categories = null,Object? allProducts = null,Object? bestSellers = null,Object? flashDeals = null,Object? fiftyPercentOff = null,Object? categoryProducts = null,Object? errorMessage = freezed,}) {
  return _then(_HomeState(
banners: null == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,allProducts: null == allProducts ? _self.allProducts : allProducts // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,bestSellers: null == bestSellers ? _self.bestSellers : bestSellers // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,flashDeals: null == flashDeals ? _self.flashDeals : flashDeals // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,fiftyPercentOff: null == fiftyPercentOff ? _self.fiftyPercentOff : fiftyPercentOff // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,categoryProducts: null == categoryProducts ? _self.categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as PaginatedSection<ProductModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get allProducts {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.allProducts, (value) {
    return _then(_self.copyWith(allProducts: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get bestSellers {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.bestSellers, (value) {
    return _then(_self.copyWith(bestSellers: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get flashDeals {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.flashDeals, (value) {
    return _then(_self.copyWith(flashDeals: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get fiftyPercentOff {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.fiftyPercentOff, (value) {
    return _then(_self.copyWith(fiftyPercentOff: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedSectionCopyWith<ProductModel, $Res> get categoryProducts {
  
  return $PaginatedSectionCopyWith<ProductModel, $Res>(_self.categoryProducts, (value) {
    return _then(_self.copyWith(categoryProducts: value));
  });
}
}

// dart format on
