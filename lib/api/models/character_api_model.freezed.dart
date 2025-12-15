// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterApiModel implements DiagnosticableTreeMixin {

 int get id; String get name; String get status; String get species; String get type; String get gender; GenericNameUrl get origin; GenericNameUrl get location; String get image; List<String> get episode; String get url; String get created;
/// Create a copy of CharacterApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterApiModelCopyWith<CharacterApiModel> get copyWith => _$CharacterApiModelCopyWithImpl<CharacterApiModel>(this as CharacterApiModel, _$identity);

  /// Serializes this CharacterApiModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CharacterApiModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('species', species))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('origin', origin))..add(DiagnosticsProperty('location', location))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('episode', episode))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('created', created));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterApiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.type, type) || other.type == type)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.episode, episode)&&(identical(other.url, url) || other.url == url)&&(identical(other.created, created) || other.created == created));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,species,type,gender,origin,location,image,const DeepCollectionEquality().hash(episode),url,created);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CharacterApiModel(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
}


}

/// @nodoc
abstract mixin class $CharacterApiModelCopyWith<$Res>  {
  factory $CharacterApiModelCopyWith(CharacterApiModel value, $Res Function(CharacterApiModel) _then) = _$CharacterApiModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String status, String species, String type, String gender, GenericNameUrl origin, GenericNameUrl location, String image, List<String> episode, String url, String created
});


$GenericNameUrlCopyWith<$Res> get origin;$GenericNameUrlCopyWith<$Res> get location;

}
/// @nodoc
class _$CharacterApiModelCopyWithImpl<$Res>
    implements $CharacterApiModelCopyWith<$Res> {
  _$CharacterApiModelCopyWithImpl(this._self, this._then);

  final CharacterApiModel _self;
  final $Res Function(CharacterApiModel) _then;

/// Create a copy of CharacterApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? type = null,Object? gender = null,Object? origin = null,Object? location = null,Object? image = null,Object? episode = null,Object? url = null,Object? created = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as GenericNameUrl,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GenericNameUrl,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as List<String>,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CharacterApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenericNameUrlCopyWith<$Res> get origin {
  
  return $GenericNameUrlCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenericNameUrlCopyWith<$Res> get location {
  
  return $GenericNameUrlCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharacterApiModel].
extension CharacterApiModelPatterns on CharacterApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterApiModel value)  $default,){
final _that = this;
switch (_that) {
case _CharacterApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String status,  String species,  String type,  String gender,  GenericNameUrl origin,  GenericNameUrl location,  String image,  List<String> episode,  String url,  String created)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterApiModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.type,_that.gender,_that.origin,_that.location,_that.image,_that.episode,_that.url,_that.created);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String status,  String species,  String type,  String gender,  GenericNameUrl origin,  GenericNameUrl location,  String image,  List<String> episode,  String url,  String created)  $default,) {final _that = this;
switch (_that) {
case _CharacterApiModel():
return $default(_that.id,_that.name,_that.status,_that.species,_that.type,_that.gender,_that.origin,_that.location,_that.image,_that.episode,_that.url,_that.created);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String status,  String species,  String type,  String gender,  GenericNameUrl origin,  GenericNameUrl location,  String image,  List<String> episode,  String url,  String created)?  $default,) {final _that = this;
switch (_that) {
case _CharacterApiModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.type,_that.gender,_that.origin,_that.location,_that.image,_that.episode,_that.url,_that.created);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CharacterApiModel with DiagnosticableTreeMixin implements CharacterApiModel {
  const _CharacterApiModel({required this.id, required this.name, required this.status, required this.species, required this.type, required this.gender, required this.origin, required this.location, required this.image, required final  List<String> episode, required this.url, required this.created}): _episode = episode;
  factory _CharacterApiModel.fromJson(Map<String, dynamic> json) => _$CharacterApiModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String status;
@override final  String species;
@override final  String type;
@override final  String gender;
@override final  GenericNameUrl origin;
@override final  GenericNameUrl location;
@override final  String image;
 final  List<String> _episode;
@override List<String> get episode {
  if (_episode is EqualUnmodifiableListView) return _episode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episode);
}

@override final  String url;
@override final  String created;

/// Create a copy of CharacterApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterApiModelCopyWith<_CharacterApiModel> get copyWith => __$CharacterApiModelCopyWithImpl<_CharacterApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterApiModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CharacterApiModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('species', species))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('origin', origin))..add(DiagnosticsProperty('location', location))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('episode', episode))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('created', created));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterApiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.type, type) || other.type == type)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._episode, _episode)&&(identical(other.url, url) || other.url == url)&&(identical(other.created, created) || other.created == created));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,species,type,gender,origin,location,image,const DeepCollectionEquality().hash(_episode),url,created);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CharacterApiModel(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
}


}

/// @nodoc
abstract mixin class _$CharacterApiModelCopyWith<$Res> implements $CharacterApiModelCopyWith<$Res> {
  factory _$CharacterApiModelCopyWith(_CharacterApiModel value, $Res Function(_CharacterApiModel) _then) = __$CharacterApiModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String status, String species, String type, String gender, GenericNameUrl origin, GenericNameUrl location, String image, List<String> episode, String url, String created
});


@override $GenericNameUrlCopyWith<$Res> get origin;@override $GenericNameUrlCopyWith<$Res> get location;

}
/// @nodoc
class __$CharacterApiModelCopyWithImpl<$Res>
    implements _$CharacterApiModelCopyWith<$Res> {
  __$CharacterApiModelCopyWithImpl(this._self, this._then);

  final _CharacterApiModel _self;
  final $Res Function(_CharacterApiModel) _then;

/// Create a copy of CharacterApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? type = null,Object? gender = null,Object? origin = null,Object? location = null,Object? image = null,Object? episode = null,Object? url = null,Object? created = null,}) {
  return _then(_CharacterApiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as GenericNameUrl,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GenericNameUrl,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self._episode : episode // ignore: cast_nullable_to_non_nullable
as List<String>,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CharacterApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenericNameUrlCopyWith<$Res> get origin {
  
  return $GenericNameUrlCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenericNameUrlCopyWith<$Res> get location {
  
  return $GenericNameUrlCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
mixin _$GenericNameUrl implements DiagnosticableTreeMixin {

 String get name; String get url;
/// Create a copy of GenericNameUrl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenericNameUrlCopyWith<GenericNameUrl> get copyWith => _$GenericNameUrlCopyWithImpl<GenericNameUrl>(this as GenericNameUrl, _$identity);

  /// Serializes this GenericNameUrl to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GenericNameUrl'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenericNameUrl&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GenericNameUrl(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $GenericNameUrlCopyWith<$Res>  {
  factory $GenericNameUrlCopyWith(GenericNameUrl value, $Res Function(GenericNameUrl) _then) = _$GenericNameUrlCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$GenericNameUrlCopyWithImpl<$Res>
    implements $GenericNameUrlCopyWith<$Res> {
  _$GenericNameUrlCopyWithImpl(this._self, this._then);

  final GenericNameUrl _self;
  final $Res Function(GenericNameUrl) _then;

/// Create a copy of GenericNameUrl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GenericNameUrl].
extension GenericNameUrlPatterns on GenericNameUrl {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenericNameUrl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenericNameUrl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenericNameUrl value)  $default,){
final _that = this;
switch (_that) {
case _GenericNameUrl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenericNameUrl value)?  $default,){
final _that = this;
switch (_that) {
case _GenericNameUrl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenericNameUrl() when $default != null:
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _GenericNameUrl():
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _GenericNameUrl() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenericNameUrl with DiagnosticableTreeMixin implements GenericNameUrl {
  const _GenericNameUrl({required this.name, required this.url});
  factory _GenericNameUrl.fromJson(Map<String, dynamic> json) => _$GenericNameUrlFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of GenericNameUrl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenericNameUrlCopyWith<_GenericNameUrl> get copyWith => __$GenericNameUrlCopyWithImpl<_GenericNameUrl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenericNameUrlToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GenericNameUrl'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenericNameUrl&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GenericNameUrl(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$GenericNameUrlCopyWith<$Res> implements $GenericNameUrlCopyWith<$Res> {
  factory _$GenericNameUrlCopyWith(_GenericNameUrl value, $Res Function(_GenericNameUrl) _then) = __$GenericNameUrlCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$GenericNameUrlCopyWithImpl<$Res>
    implements _$GenericNameUrlCopyWith<$Res> {
  __$GenericNameUrlCopyWithImpl(this._self, this._then);

  final _GenericNameUrl _self;
  final $Res Function(_GenericNameUrl) _then;

/// Create a copy of GenericNameUrl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_GenericNameUrl(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
