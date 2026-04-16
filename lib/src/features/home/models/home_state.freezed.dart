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
mixin _$HomeState {

 List<BannerModel> get banners; List<CategoryModel> get categories; List<ProductModel> get bestSellers; List<ProductModel> get flashDeals; List<ProductModel> get fiftyPercentOff; List<ProductModel> get products; List<ProductModel> get categoryProducts; bool get isLoading; bool get hasMore; bool get hasMoreCategory; bool get hasMoreBestSellers; bool get hasMoreFlashDeals; bool get hasMoreFiftyPercentOff; bool get isFetchingMore; bool get isFetchingMoreBestSellers; bool get isFetchingMoreFlashDeals; bool get isFetchingMoreFiftyPercentOff; bool get isFetchingMoreCategory;// 2. Where the "hasMore" flags are:
// 3. Where the scroll markers are:
// 4. Where the loading flags are:
 String? get errorMessage; DocumentSnapshot? get lastDocAll; DocumentSnapshot? get lastDocBestSellers; DocumentSnapshot? get lastDocFlashDeals; DocumentSnapshot? get lastDocFiftyPercentOff; DocumentSnapshot? get lastDocCategory;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.banners, banners)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.bestSellers, bestSellers)&&const DeepCollectionEquality().equals(other.flashDeals, flashDeals)&&const DeepCollectionEquality().equals(other.fiftyPercentOff, fiftyPercentOff)&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.categoryProducts, categoryProducts)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.hasMoreCategory, hasMoreCategory) || other.hasMoreCategory == hasMoreCategory)&&(identical(other.hasMoreBestSellers, hasMoreBestSellers) || other.hasMoreBestSellers == hasMoreBestSellers)&&(identical(other.hasMoreFlashDeals, hasMoreFlashDeals) || other.hasMoreFlashDeals == hasMoreFlashDeals)&&(identical(other.hasMoreFiftyPercentOff, hasMoreFiftyPercentOff) || other.hasMoreFiftyPercentOff == hasMoreFiftyPercentOff)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.isFetchingMoreBestSellers, isFetchingMoreBestSellers) || other.isFetchingMoreBestSellers == isFetchingMoreBestSellers)&&(identical(other.isFetchingMoreFlashDeals, isFetchingMoreFlashDeals) || other.isFetchingMoreFlashDeals == isFetchingMoreFlashDeals)&&(identical(other.isFetchingMoreFiftyPercentOff, isFetchingMoreFiftyPercentOff) || other.isFetchingMoreFiftyPercentOff == isFetchingMoreFiftyPercentOff)&&(identical(other.isFetchingMoreCategory, isFetchingMoreCategory) || other.isFetchingMoreCategory == isFetchingMoreCategory)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.lastDocAll, lastDocAll) || other.lastDocAll == lastDocAll)&&(identical(other.lastDocBestSellers, lastDocBestSellers) || other.lastDocBestSellers == lastDocBestSellers)&&(identical(other.lastDocFlashDeals, lastDocFlashDeals) || other.lastDocFlashDeals == lastDocFlashDeals)&&(identical(other.lastDocFiftyPercentOff, lastDocFiftyPercentOff) || other.lastDocFiftyPercentOff == lastDocFiftyPercentOff)&&(identical(other.lastDocCategory, lastDocCategory) || other.lastDocCategory == lastDocCategory));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(banners),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(bestSellers),const DeepCollectionEquality().hash(flashDeals),const DeepCollectionEquality().hash(fiftyPercentOff),const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(categoryProducts),isLoading,hasMore,hasMoreCategory,hasMoreBestSellers,hasMoreFlashDeals,hasMoreFiftyPercentOff,isFetchingMore,isFetchingMoreBestSellers,isFetchingMoreFlashDeals,isFetchingMoreFiftyPercentOff,isFetchingMoreCategory,errorMessage,lastDocAll,lastDocBestSellers,lastDocFlashDeals,lastDocFiftyPercentOff,lastDocCategory]);

@override
String toString() {
  return 'HomeState(banners: $banners, categories: $categories, bestSellers: $bestSellers, flashDeals: $flashDeals, fiftyPercentOff: $fiftyPercentOff, products: $products, categoryProducts: $categoryProducts, isLoading: $isLoading, hasMore: $hasMore, hasMoreCategory: $hasMoreCategory, hasMoreBestSellers: $hasMoreBestSellers, hasMoreFlashDeals: $hasMoreFlashDeals, hasMoreFiftyPercentOff: $hasMoreFiftyPercentOff, isFetchingMore: $isFetchingMore, isFetchingMoreBestSellers: $isFetchingMoreBestSellers, isFetchingMoreFlashDeals: $isFetchingMoreFlashDeals, isFetchingMoreFiftyPercentOff: $isFetchingMoreFiftyPercentOff, isFetchingMoreCategory: $isFetchingMoreCategory, errorMessage: $errorMessage, lastDocAll: $lastDocAll, lastDocBestSellers: $lastDocBestSellers, lastDocFlashDeals: $lastDocFlashDeals, lastDocFiftyPercentOff: $lastDocFiftyPercentOff, lastDocCategory: $lastDocCategory)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<BannerModel> banners, List<CategoryModel> categories, List<ProductModel> bestSellers, List<ProductModel> flashDeals, List<ProductModel> fiftyPercentOff, List<ProductModel> products, List<ProductModel> categoryProducts, bool isLoading, bool hasMore, bool hasMoreCategory, bool hasMoreBestSellers, bool hasMoreFlashDeals, bool hasMoreFiftyPercentOff, bool isFetchingMore, bool isFetchingMoreBestSellers, bool isFetchingMoreFlashDeals, bool isFetchingMoreFiftyPercentOff, bool isFetchingMoreCategory, String? errorMessage, DocumentSnapshot? lastDocAll, DocumentSnapshot? lastDocBestSellers, DocumentSnapshot? lastDocFlashDeals, DocumentSnapshot? lastDocFiftyPercentOff, DocumentSnapshot? lastDocCategory
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banners = null,Object? categories = null,Object? bestSellers = null,Object? flashDeals = null,Object? fiftyPercentOff = null,Object? products = null,Object? categoryProducts = null,Object? isLoading = null,Object? hasMore = null,Object? hasMoreCategory = null,Object? hasMoreBestSellers = null,Object? hasMoreFlashDeals = null,Object? hasMoreFiftyPercentOff = null,Object? isFetchingMore = null,Object? isFetchingMoreBestSellers = null,Object? isFetchingMoreFlashDeals = null,Object? isFetchingMoreFiftyPercentOff = null,Object? isFetchingMoreCategory = null,Object? errorMessage = freezed,Object? lastDocAll = freezed,Object? lastDocBestSellers = freezed,Object? lastDocFlashDeals = freezed,Object? lastDocFiftyPercentOff = freezed,Object? lastDocCategory = freezed,}) {
  return _then(_self.copyWith(
banners: null == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,bestSellers: null == bestSellers ? _self.bestSellers : bestSellers // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,flashDeals: null == flashDeals ? _self.flashDeals : flashDeals // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,fiftyPercentOff: null == fiftyPercentOff ? _self.fiftyPercentOff : fiftyPercentOff // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,categoryProducts: null == categoryProducts ? _self.categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,hasMoreCategory: null == hasMoreCategory ? _self.hasMoreCategory : hasMoreCategory // ignore: cast_nullable_to_non_nullable
as bool,hasMoreBestSellers: null == hasMoreBestSellers ? _self.hasMoreBestSellers : hasMoreBestSellers // ignore: cast_nullable_to_non_nullable
as bool,hasMoreFlashDeals: null == hasMoreFlashDeals ? _self.hasMoreFlashDeals : hasMoreFlashDeals // ignore: cast_nullable_to_non_nullable
as bool,hasMoreFiftyPercentOff: null == hasMoreFiftyPercentOff ? _self.hasMoreFiftyPercentOff : hasMoreFiftyPercentOff // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMoreBestSellers: null == isFetchingMoreBestSellers ? _self.isFetchingMoreBestSellers : isFetchingMoreBestSellers // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMoreFlashDeals: null == isFetchingMoreFlashDeals ? _self.isFetchingMoreFlashDeals : isFetchingMoreFlashDeals // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMoreFiftyPercentOff: null == isFetchingMoreFiftyPercentOff ? _self.isFetchingMoreFiftyPercentOff : isFetchingMoreFiftyPercentOff // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMoreCategory: null == isFetchingMoreCategory ? _self.isFetchingMoreCategory : isFetchingMoreCategory // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,lastDocAll: freezed == lastDocAll ? _self.lastDocAll : lastDocAll // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,lastDocBestSellers: freezed == lastDocBestSellers ? _self.lastDocBestSellers : lastDocBestSellers // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,lastDocFlashDeals: freezed == lastDocFlashDeals ? _self.lastDocFlashDeals : lastDocFlashDeals // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,lastDocFiftyPercentOff: freezed == lastDocFiftyPercentOff ? _self.lastDocFiftyPercentOff : lastDocFiftyPercentOff // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,lastDocCategory: freezed == lastDocCategory ? _self.lastDocCategory : lastDocCategory // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BannerModel> banners,  List<CategoryModel> categories,  List<ProductModel> bestSellers,  List<ProductModel> flashDeals,  List<ProductModel> fiftyPercentOff,  List<ProductModel> products,  List<ProductModel> categoryProducts,  bool isLoading,  bool hasMore,  bool hasMoreCategory,  bool hasMoreBestSellers,  bool hasMoreFlashDeals,  bool hasMoreFiftyPercentOff,  bool isFetchingMore,  bool isFetchingMoreBestSellers,  bool isFetchingMoreFlashDeals,  bool isFetchingMoreFiftyPercentOff,  bool isFetchingMoreCategory,  String? errorMessage,  DocumentSnapshot? lastDocAll,  DocumentSnapshot? lastDocBestSellers,  DocumentSnapshot? lastDocFlashDeals,  DocumentSnapshot? lastDocFiftyPercentOff,  DocumentSnapshot? lastDocCategory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.banners,_that.categories,_that.bestSellers,_that.flashDeals,_that.fiftyPercentOff,_that.products,_that.categoryProducts,_that.isLoading,_that.hasMore,_that.hasMoreCategory,_that.hasMoreBestSellers,_that.hasMoreFlashDeals,_that.hasMoreFiftyPercentOff,_that.isFetchingMore,_that.isFetchingMoreBestSellers,_that.isFetchingMoreFlashDeals,_that.isFetchingMoreFiftyPercentOff,_that.isFetchingMoreCategory,_that.errorMessage,_that.lastDocAll,_that.lastDocBestSellers,_that.lastDocFlashDeals,_that.lastDocFiftyPercentOff,_that.lastDocCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BannerModel> banners,  List<CategoryModel> categories,  List<ProductModel> bestSellers,  List<ProductModel> flashDeals,  List<ProductModel> fiftyPercentOff,  List<ProductModel> products,  List<ProductModel> categoryProducts,  bool isLoading,  bool hasMore,  bool hasMoreCategory,  bool hasMoreBestSellers,  bool hasMoreFlashDeals,  bool hasMoreFiftyPercentOff,  bool isFetchingMore,  bool isFetchingMoreBestSellers,  bool isFetchingMoreFlashDeals,  bool isFetchingMoreFiftyPercentOff,  bool isFetchingMoreCategory,  String? errorMessage,  DocumentSnapshot? lastDocAll,  DocumentSnapshot? lastDocBestSellers,  DocumentSnapshot? lastDocFlashDeals,  DocumentSnapshot? lastDocFiftyPercentOff,  DocumentSnapshot? lastDocCategory)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.banners,_that.categories,_that.bestSellers,_that.flashDeals,_that.fiftyPercentOff,_that.products,_that.categoryProducts,_that.isLoading,_that.hasMore,_that.hasMoreCategory,_that.hasMoreBestSellers,_that.hasMoreFlashDeals,_that.hasMoreFiftyPercentOff,_that.isFetchingMore,_that.isFetchingMoreBestSellers,_that.isFetchingMoreFlashDeals,_that.isFetchingMoreFiftyPercentOff,_that.isFetchingMoreCategory,_that.errorMessage,_that.lastDocAll,_that.lastDocBestSellers,_that.lastDocFlashDeals,_that.lastDocFiftyPercentOff,_that.lastDocCategory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BannerModel> banners,  List<CategoryModel> categories,  List<ProductModel> bestSellers,  List<ProductModel> flashDeals,  List<ProductModel> fiftyPercentOff,  List<ProductModel> products,  List<ProductModel> categoryProducts,  bool isLoading,  bool hasMore,  bool hasMoreCategory,  bool hasMoreBestSellers,  bool hasMoreFlashDeals,  bool hasMoreFiftyPercentOff,  bool isFetchingMore,  bool isFetchingMoreBestSellers,  bool isFetchingMoreFlashDeals,  bool isFetchingMoreFiftyPercentOff,  bool isFetchingMoreCategory,  String? errorMessage,  DocumentSnapshot? lastDocAll,  DocumentSnapshot? lastDocBestSellers,  DocumentSnapshot? lastDocFlashDeals,  DocumentSnapshot? lastDocFiftyPercentOff,  DocumentSnapshot? lastDocCategory)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.banners,_that.categories,_that.bestSellers,_that.flashDeals,_that.fiftyPercentOff,_that.products,_that.categoryProducts,_that.isLoading,_that.hasMore,_that.hasMoreCategory,_that.hasMoreBestSellers,_that.hasMoreFlashDeals,_that.hasMoreFiftyPercentOff,_that.isFetchingMore,_that.isFetchingMoreBestSellers,_that.isFetchingMoreFlashDeals,_that.isFetchingMoreFiftyPercentOff,_that.isFetchingMoreCategory,_that.errorMessage,_that.lastDocAll,_that.lastDocBestSellers,_that.lastDocFlashDeals,_that.lastDocFiftyPercentOff,_that.lastDocCategory);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({final  List<BannerModel> banners = const [], final  List<CategoryModel> categories = const [], final  List<ProductModel> bestSellers = const [], final  List<ProductModel> flashDeals = const [], final  List<ProductModel> fiftyPercentOff = const [], final  List<ProductModel> products = const [], final  List<ProductModel> categoryProducts = const [], this.isLoading = false, this.hasMore = true, this.hasMoreCategory = true, this.hasMoreBestSellers = true, this.hasMoreFlashDeals = true, this.hasMoreFiftyPercentOff = true, this.isFetchingMore = false, this.isFetchingMoreBestSellers = false, this.isFetchingMoreFlashDeals = false, this.isFetchingMoreFiftyPercentOff = false, this.isFetchingMoreCategory = false, this.errorMessage, this.lastDocAll, this.lastDocBestSellers, this.lastDocFlashDeals, this.lastDocFiftyPercentOff, this.lastDocCategory}): _banners = banners,_categories = categories,_bestSellers = bestSellers,_flashDeals = flashDeals,_fiftyPercentOff = fiftyPercentOff,_products = products,_categoryProducts = categoryProducts,super._();
  

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

 final  List<ProductModel> _bestSellers;
@override@JsonKey() List<ProductModel> get bestSellers {
  if (_bestSellers is EqualUnmodifiableListView) return _bestSellers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bestSellers);
}

 final  List<ProductModel> _flashDeals;
@override@JsonKey() List<ProductModel> get flashDeals {
  if (_flashDeals is EqualUnmodifiableListView) return _flashDeals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flashDeals);
}

 final  List<ProductModel> _fiftyPercentOff;
@override@JsonKey() List<ProductModel> get fiftyPercentOff {
  if (_fiftyPercentOff is EqualUnmodifiableListView) return _fiftyPercentOff;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fiftyPercentOff);
}

 final  List<ProductModel> _products;
@override@JsonKey() List<ProductModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<ProductModel> _categoryProducts;
@override@JsonKey() List<ProductModel> get categoryProducts {
  if (_categoryProducts is EqualUnmodifiableListView) return _categoryProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryProducts);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool hasMoreCategory;
@override@JsonKey() final  bool hasMoreBestSellers;
@override@JsonKey() final  bool hasMoreFlashDeals;
@override@JsonKey() final  bool hasMoreFiftyPercentOff;
@override@JsonKey() final  bool isFetchingMore;
@override@JsonKey() final  bool isFetchingMoreBestSellers;
@override@JsonKey() final  bool isFetchingMoreFlashDeals;
@override@JsonKey() final  bool isFetchingMoreFiftyPercentOff;
@override@JsonKey() final  bool isFetchingMoreCategory;
// 2. Where the "hasMore" flags are:
// 3. Where the scroll markers are:
// 4. Where the loading flags are:
@override final  String? errorMessage;
@override final  DocumentSnapshot? lastDocAll;
@override final  DocumentSnapshot? lastDocBestSellers;
@override final  DocumentSnapshot? lastDocFlashDeals;
@override final  DocumentSnapshot? lastDocFiftyPercentOff;
@override final  DocumentSnapshot? lastDocCategory;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&const DeepCollectionEquality().equals(other._banners, _banners)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._bestSellers, _bestSellers)&&const DeepCollectionEquality().equals(other._flashDeals, _flashDeals)&&const DeepCollectionEquality().equals(other._fiftyPercentOff, _fiftyPercentOff)&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._categoryProducts, _categoryProducts)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.hasMoreCategory, hasMoreCategory) || other.hasMoreCategory == hasMoreCategory)&&(identical(other.hasMoreBestSellers, hasMoreBestSellers) || other.hasMoreBestSellers == hasMoreBestSellers)&&(identical(other.hasMoreFlashDeals, hasMoreFlashDeals) || other.hasMoreFlashDeals == hasMoreFlashDeals)&&(identical(other.hasMoreFiftyPercentOff, hasMoreFiftyPercentOff) || other.hasMoreFiftyPercentOff == hasMoreFiftyPercentOff)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.isFetchingMoreBestSellers, isFetchingMoreBestSellers) || other.isFetchingMoreBestSellers == isFetchingMoreBestSellers)&&(identical(other.isFetchingMoreFlashDeals, isFetchingMoreFlashDeals) || other.isFetchingMoreFlashDeals == isFetchingMoreFlashDeals)&&(identical(other.isFetchingMoreFiftyPercentOff, isFetchingMoreFiftyPercentOff) || other.isFetchingMoreFiftyPercentOff == isFetchingMoreFiftyPercentOff)&&(identical(other.isFetchingMoreCategory, isFetchingMoreCategory) || other.isFetchingMoreCategory == isFetchingMoreCategory)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.lastDocAll, lastDocAll) || other.lastDocAll == lastDocAll)&&(identical(other.lastDocBestSellers, lastDocBestSellers) || other.lastDocBestSellers == lastDocBestSellers)&&(identical(other.lastDocFlashDeals, lastDocFlashDeals) || other.lastDocFlashDeals == lastDocFlashDeals)&&(identical(other.lastDocFiftyPercentOff, lastDocFiftyPercentOff) || other.lastDocFiftyPercentOff == lastDocFiftyPercentOff)&&(identical(other.lastDocCategory, lastDocCategory) || other.lastDocCategory == lastDocCategory));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_banners),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_bestSellers),const DeepCollectionEquality().hash(_flashDeals),const DeepCollectionEquality().hash(_fiftyPercentOff),const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_categoryProducts),isLoading,hasMore,hasMoreCategory,hasMoreBestSellers,hasMoreFlashDeals,hasMoreFiftyPercentOff,isFetchingMore,isFetchingMoreBestSellers,isFetchingMoreFlashDeals,isFetchingMoreFiftyPercentOff,isFetchingMoreCategory,errorMessage,lastDocAll,lastDocBestSellers,lastDocFlashDeals,lastDocFiftyPercentOff,lastDocCategory]);

@override
String toString() {
  return 'HomeState(banners: $banners, categories: $categories, bestSellers: $bestSellers, flashDeals: $flashDeals, fiftyPercentOff: $fiftyPercentOff, products: $products, categoryProducts: $categoryProducts, isLoading: $isLoading, hasMore: $hasMore, hasMoreCategory: $hasMoreCategory, hasMoreBestSellers: $hasMoreBestSellers, hasMoreFlashDeals: $hasMoreFlashDeals, hasMoreFiftyPercentOff: $hasMoreFiftyPercentOff, isFetchingMore: $isFetchingMore, isFetchingMoreBestSellers: $isFetchingMoreBestSellers, isFetchingMoreFlashDeals: $isFetchingMoreFlashDeals, isFetchingMoreFiftyPercentOff: $isFetchingMoreFiftyPercentOff, isFetchingMoreCategory: $isFetchingMoreCategory, errorMessage: $errorMessage, lastDocAll: $lastDocAll, lastDocBestSellers: $lastDocBestSellers, lastDocFlashDeals: $lastDocFlashDeals, lastDocFiftyPercentOff: $lastDocFiftyPercentOff, lastDocCategory: $lastDocCategory)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<BannerModel> banners, List<CategoryModel> categories, List<ProductModel> bestSellers, List<ProductModel> flashDeals, List<ProductModel> fiftyPercentOff, List<ProductModel> products, List<ProductModel> categoryProducts, bool isLoading, bool hasMore, bool hasMoreCategory, bool hasMoreBestSellers, bool hasMoreFlashDeals, bool hasMoreFiftyPercentOff, bool isFetchingMore, bool isFetchingMoreBestSellers, bool isFetchingMoreFlashDeals, bool isFetchingMoreFiftyPercentOff, bool isFetchingMoreCategory, String? errorMessage, DocumentSnapshot? lastDocAll, DocumentSnapshot? lastDocBestSellers, DocumentSnapshot? lastDocFlashDeals, DocumentSnapshot? lastDocFiftyPercentOff, DocumentSnapshot? lastDocCategory
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banners = null,Object? categories = null,Object? bestSellers = null,Object? flashDeals = null,Object? fiftyPercentOff = null,Object? products = null,Object? categoryProducts = null,Object? isLoading = null,Object? hasMore = null,Object? hasMoreCategory = null,Object? hasMoreBestSellers = null,Object? hasMoreFlashDeals = null,Object? hasMoreFiftyPercentOff = null,Object? isFetchingMore = null,Object? isFetchingMoreBestSellers = null,Object? isFetchingMoreFlashDeals = null,Object? isFetchingMoreFiftyPercentOff = null,Object? isFetchingMoreCategory = null,Object? errorMessage = freezed,Object? lastDocAll = freezed,Object? lastDocBestSellers = freezed,Object? lastDocFlashDeals = freezed,Object? lastDocFiftyPercentOff = freezed,Object? lastDocCategory = freezed,}) {
  return _then(_HomeState(
banners: null == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,bestSellers: null == bestSellers ? _self._bestSellers : bestSellers // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,flashDeals: null == flashDeals ? _self._flashDeals : flashDeals // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,fiftyPercentOff: null == fiftyPercentOff ? _self._fiftyPercentOff : fiftyPercentOff // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,categoryProducts: null == categoryProducts ? _self._categoryProducts : categoryProducts // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,hasMoreCategory: null == hasMoreCategory ? _self.hasMoreCategory : hasMoreCategory // ignore: cast_nullable_to_non_nullable
as bool,hasMoreBestSellers: null == hasMoreBestSellers ? _self.hasMoreBestSellers : hasMoreBestSellers // ignore: cast_nullable_to_non_nullable
as bool,hasMoreFlashDeals: null == hasMoreFlashDeals ? _self.hasMoreFlashDeals : hasMoreFlashDeals // ignore: cast_nullable_to_non_nullable
as bool,hasMoreFiftyPercentOff: null == hasMoreFiftyPercentOff ? _self.hasMoreFiftyPercentOff : hasMoreFiftyPercentOff // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMoreBestSellers: null == isFetchingMoreBestSellers ? _self.isFetchingMoreBestSellers : isFetchingMoreBestSellers // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMoreFlashDeals: null == isFetchingMoreFlashDeals ? _self.isFetchingMoreFlashDeals : isFetchingMoreFlashDeals // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMoreFiftyPercentOff: null == isFetchingMoreFiftyPercentOff ? _self.isFetchingMoreFiftyPercentOff : isFetchingMoreFiftyPercentOff // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMoreCategory: null == isFetchingMoreCategory ? _self.isFetchingMoreCategory : isFetchingMoreCategory // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,lastDocAll: freezed == lastDocAll ? _self.lastDocAll : lastDocAll // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,lastDocBestSellers: freezed == lastDocBestSellers ? _self.lastDocBestSellers : lastDocBestSellers // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,lastDocFlashDeals: freezed == lastDocFlashDeals ? _self.lastDocFlashDeals : lastDocFlashDeals // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,lastDocFiftyPercentOff: freezed == lastDocFiftyPercentOff ? _self.lastDocFiftyPercentOff : lastDocFiftyPercentOff // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,lastDocCategory: freezed == lastDocCategory ? _self.lastDocCategory : lastDocCategory // ignore: cast_nullable_to_non_nullable
as DocumentSnapshot?,
  ));
}


}

// dart format on
