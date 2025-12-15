// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterReviewModel {

 Character get character; int get rating; String get comment;
/// Create a copy of CharacterReviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterReviewModelCopyWith<CharacterReviewModel> get copyWith => _$CharacterReviewModelCopyWithImpl<CharacterReviewModel>(this as CharacterReviewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterReviewModel&&(identical(other.character, character) || other.character == character)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,character,rating,comment);

@override
String toString() {
  return 'CharacterReviewModel(character: $character, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $CharacterReviewModelCopyWith<$Res>  {
  factory $CharacterReviewModelCopyWith(CharacterReviewModel value, $Res Function(CharacterReviewModel) _then) = _$CharacterReviewModelCopyWithImpl;
@useResult
$Res call({
 Character character, int rating, String comment
});


$CharacterApiModelCopyWith<$Res> get character;

}
/// @nodoc
class _$CharacterReviewModelCopyWithImpl<$Res>
    implements $CharacterReviewModelCopyWith<$Res> {
  _$CharacterReviewModelCopyWithImpl(this._self, this._then);

  final CharacterReviewModel _self;
  final $Res Function(CharacterReviewModel) _then;

/// Create a copy of CharacterReviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? character = null,Object? rating = null,Object? comment = null,}) {
  return _then(_self.copyWith(
character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as Character,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CharacterReviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterApiModelCopyWith<$Res> get character {
  
  return $CharacterApiModelCopyWith<$Res>(_self.character, (value) {
    return _then(_self.copyWith(character: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharacterReviewModel].
extension CharacterReviewModelPatterns on CharacterReviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterReviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterReviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterReviewModel value)  $default,){
final _that = this;
switch (_that) {
case _CharacterReviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterReviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterReviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Character character,  int rating,  String comment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterReviewModel() when $default != null:
return $default(_that.character,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Character character,  int rating,  String comment)  $default,) {final _that = this;
switch (_that) {
case _CharacterReviewModel():
return $default(_that.character,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Character character,  int rating,  String comment)?  $default,) {final _that = this;
switch (_that) {
case _CharacterReviewModel() when $default != null:
return $default(_that.character,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _CharacterReviewModel implements CharacterReviewModel {
   _CharacterReviewModel({required this.character, required this.rating, required this.comment});
  

@override final  Character character;
@override final  int rating;
@override final  String comment;

/// Create a copy of CharacterReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterReviewModelCopyWith<_CharacterReviewModel> get copyWith => __$CharacterReviewModelCopyWithImpl<_CharacterReviewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterReviewModel&&(identical(other.character, character) || other.character == character)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,character,rating,comment);

@override
String toString() {
  return 'CharacterReviewModel(character: $character, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$CharacterReviewModelCopyWith<$Res> implements $CharacterReviewModelCopyWith<$Res> {
  factory _$CharacterReviewModelCopyWith(_CharacterReviewModel value, $Res Function(_CharacterReviewModel) _then) = __$CharacterReviewModelCopyWithImpl;
@override @useResult
$Res call({
 Character character, int rating, String comment
});


@override $CharacterApiModelCopyWith<$Res> get character;

}
/// @nodoc
class __$CharacterReviewModelCopyWithImpl<$Res>
    implements _$CharacterReviewModelCopyWith<$Res> {
  __$CharacterReviewModelCopyWithImpl(this._self, this._then);

  final _CharacterReviewModel _self;
  final $Res Function(_CharacterReviewModel) _then;

/// Create a copy of CharacterReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? character = null,Object? rating = null,Object? comment = null,}) {
  return _then(_CharacterReviewModel(
character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as Character,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CharacterReviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterApiModelCopyWith<$Res> get character {
  
  return $CharacterApiModelCopyWith<$Res>(_self.character, (value) {
    return _then(_self.copyWith(character: value));
  });
}
}

// dart format on
