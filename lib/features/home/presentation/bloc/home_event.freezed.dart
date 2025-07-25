// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchHome value)?  fetchHome,TResult Function( ToggleFavorite value)?  toggleFavorite,TResult Function( IncrementCount value)?  incrementCount,TResult Function( DecrementCount value)?  decrementCount,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchHome() when fetchHome != null:
return fetchHome(_that);case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case IncrementCount() when incrementCount != null:
return incrementCount(_that);case DecrementCount() when decrementCount != null:
return decrementCount(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchHome value)  fetchHome,required TResult Function( ToggleFavorite value)  toggleFavorite,required TResult Function( IncrementCount value)  incrementCount,required TResult Function( DecrementCount value)  decrementCount,}){
final _that = this;
switch (_that) {
case FetchHome():
return fetchHome(_that);case ToggleFavorite():
return toggleFavorite(_that);case IncrementCount():
return incrementCount(_that);case DecrementCount():
return decrementCount(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchHome value)?  fetchHome,TResult? Function( ToggleFavorite value)?  toggleFavorite,TResult? Function( IncrementCount value)?  incrementCount,TResult? Function( DecrementCount value)?  decrementCount,}){
final _that = this;
switch (_that) {
case FetchHome() when fetchHome != null:
return fetchHome(_that);case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case IncrementCount() when incrementCount != null:
return incrementCount(_that);case DecrementCount() when decrementCount != null:
return decrementCount(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchHome,TResult Function( int productId)?  toggleFavorite,TResult Function( int productId)?  incrementCount,TResult Function( int productId)?  decrementCount,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchHome() when fetchHome != null:
return fetchHome();case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.productId);case IncrementCount() when incrementCount != null:
return incrementCount(_that.productId);case DecrementCount() when decrementCount != null:
return decrementCount(_that.productId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchHome,required TResult Function( int productId)  toggleFavorite,required TResult Function( int productId)  incrementCount,required TResult Function( int productId)  decrementCount,}) {final _that = this;
switch (_that) {
case FetchHome():
return fetchHome();case ToggleFavorite():
return toggleFavorite(_that.productId);case IncrementCount():
return incrementCount(_that.productId);case DecrementCount():
return decrementCount(_that.productId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchHome,TResult? Function( int productId)?  toggleFavorite,TResult? Function( int productId)?  incrementCount,TResult? Function( int productId)?  decrementCount,}) {final _that = this;
switch (_that) {
case FetchHome() when fetchHome != null:
return fetchHome();case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.productId);case IncrementCount() when incrementCount != null:
return incrementCount(_that.productId);case DecrementCount() when decrementCount != null:
return decrementCount(_that.productId);case _:
  return null;

}
}

}

/// @nodoc


class FetchHome implements HomeEvent {
  const FetchHome();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchHome);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchHome()';
}


}




/// @nodoc


class ToggleFavorite implements HomeEvent {
  const ToggleFavorite(this.productId);
  

 final  int productId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFavoriteCopyWith<ToggleFavorite> get copyWith => _$ToggleFavoriteCopyWithImpl<ToggleFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFavorite&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'HomeEvent.toggleFavorite(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $ToggleFavoriteCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $ToggleFavoriteCopyWith(ToggleFavorite value, $Res Function(ToggleFavorite) _then) = _$ToggleFavoriteCopyWithImpl;
@useResult
$Res call({
 int productId
});




}
/// @nodoc
class _$ToggleFavoriteCopyWithImpl<$Res>
    implements $ToggleFavoriteCopyWith<$Res> {
  _$ToggleFavoriteCopyWithImpl(this._self, this._then);

  final ToggleFavorite _self;
  final $Res Function(ToggleFavorite) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(ToggleFavorite(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class IncrementCount implements HomeEvent {
  const IncrementCount(this.productId);
  

 final  int productId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncrementCountCopyWith<IncrementCount> get copyWith => _$IncrementCountCopyWithImpl<IncrementCount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncrementCount&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'HomeEvent.incrementCount(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $IncrementCountCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $IncrementCountCopyWith(IncrementCount value, $Res Function(IncrementCount) _then) = _$IncrementCountCopyWithImpl;
@useResult
$Res call({
 int productId
});




}
/// @nodoc
class _$IncrementCountCopyWithImpl<$Res>
    implements $IncrementCountCopyWith<$Res> {
  _$IncrementCountCopyWithImpl(this._self, this._then);

  final IncrementCount _self;
  final $Res Function(IncrementCount) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(IncrementCount(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class DecrementCount implements HomeEvent {
  const DecrementCount(this.productId);
  

 final  int productId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecrementCountCopyWith<DecrementCount> get copyWith => _$DecrementCountCopyWithImpl<DecrementCount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecrementCount&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'HomeEvent.decrementCount(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $DecrementCountCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $DecrementCountCopyWith(DecrementCount value, $Res Function(DecrementCount) _then) = _$DecrementCountCopyWithImpl;
@useResult
$Res call({
 int productId
});




}
/// @nodoc
class _$DecrementCountCopyWithImpl<$Res>
    implements $DecrementCountCopyWith<$Res> {
  _$DecrementCountCopyWithImpl(this._self, this._then);

  final DecrementCount _self;
  final $Res Function(DecrementCount) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(DecrementCount(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
