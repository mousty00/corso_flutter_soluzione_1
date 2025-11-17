// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_list_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HttpListApiModel {

 List<HttpStatusApiModel> get statusCodes;
/// Create a copy of HttpListApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HttpListApiModelCopyWith<HttpListApiModel> get copyWith => _$HttpListApiModelCopyWithImpl<HttpListApiModel>(this as HttpListApiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HttpListApiModel&&const DeepCollectionEquality().equals(other.statusCodes, statusCodes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(statusCodes));

@override
String toString() {
  return 'HttpListApiModel(statusCodes: $statusCodes)';
}


}

/// @nodoc
abstract mixin class $HttpListApiModelCopyWith<$Res>  {
  factory $HttpListApiModelCopyWith(HttpListApiModel value, $Res Function(HttpListApiModel) _then) = _$HttpListApiModelCopyWithImpl;
@useResult
$Res call({
 List<HttpStatusApiModel> statusCodes
});




}
/// @nodoc
class _$HttpListApiModelCopyWithImpl<$Res>
    implements $HttpListApiModelCopyWith<$Res> {
  _$HttpListApiModelCopyWithImpl(this._self, this._then);

  final HttpListApiModel _self;
  final $Res Function(HttpListApiModel) _then;

/// Create a copy of HttpListApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCodes = null,}) {
  return _then(HttpListApiModel(
statusCodes: null == statusCodes ? _self.statusCodes : statusCodes // ignore: cast_nullable_to_non_nullable
as List<HttpStatusApiModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [HttpListApiModel].
extension HttpListApiModelPatterns on HttpListApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

// dart format on
