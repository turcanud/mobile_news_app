// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SourceApiDto {

 String? get id; String? get name;
/// Create a copy of SourceApiDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceApiDtoCopyWith<SourceApiDto> get copyWith => _$SourceApiDtoCopyWithImpl<SourceApiDto>(this as SourceApiDto, _$identity);

  /// Serializes this SourceApiDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceApiDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'SourceApiDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $SourceApiDtoCopyWith<$Res>  {
  factory $SourceApiDtoCopyWith(SourceApiDto value, $Res Function(SourceApiDto) _then) = _$SourceApiDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class _$SourceApiDtoCopyWithImpl<$Res>
    implements $SourceApiDtoCopyWith<$Res> {
  _$SourceApiDtoCopyWithImpl(this._self, this._then);

  final SourceApiDto _self;
  final $Res Function(SourceApiDto) _then;

/// Create a copy of SourceApiDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SourceApiDto].
extension SourceApiDtoPatterns on SourceApiDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceApiDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceApiDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceApiDto value)  $default,){
final _that = this;
switch (_that) {
case _SourceApiDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceApiDto value)?  $default,){
final _that = this;
switch (_that) {
case _SourceApiDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourceApiDto() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _SourceApiDto():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _SourceApiDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SourceApiDto implements SourceApiDto {
  const _SourceApiDto({this.id, this.name});
  factory _SourceApiDto.fromJson(Map<String, dynamic> json) => _$SourceApiDtoFromJson(json);

@override final  String? id;
@override final  String? name;

/// Create a copy of SourceApiDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceApiDtoCopyWith<_SourceApiDto> get copyWith => __$SourceApiDtoCopyWithImpl<_SourceApiDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourceApiDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceApiDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'SourceApiDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SourceApiDtoCopyWith<$Res> implements $SourceApiDtoCopyWith<$Res> {
  factory _$SourceApiDtoCopyWith(_SourceApiDto value, $Res Function(_SourceApiDto) _then) = __$SourceApiDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class __$SourceApiDtoCopyWithImpl<$Res>
    implements _$SourceApiDtoCopyWith<$Res> {
  __$SourceApiDtoCopyWithImpl(this._self, this._then);

  final _SourceApiDto _self;
  final $Res Function(_SourceApiDto) _then;

/// Create a copy of SourceApiDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_SourceApiDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NewsApiDto {

 String? get status; int? get totalResults; List<ArticleApiDto>? get articles;
/// Create a copy of NewsApiDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsApiDtoCopyWith<NewsApiDto> get copyWith => _$NewsApiDtoCopyWithImpl<NewsApiDto>(this as NewsApiDto, _$identity);

  /// Serializes this NewsApiDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsApiDto&&(identical(other.status, status) || other.status == status)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other.articles, articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,totalResults,const DeepCollectionEquality().hash(articles));

@override
String toString() {
  return 'NewsApiDto(status: $status, totalResults: $totalResults, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $NewsApiDtoCopyWith<$Res>  {
  factory $NewsApiDtoCopyWith(NewsApiDto value, $Res Function(NewsApiDto) _then) = _$NewsApiDtoCopyWithImpl;
@useResult
$Res call({
 String? status, int? totalResults, List<ArticleApiDto>? articles
});




}
/// @nodoc
class _$NewsApiDtoCopyWithImpl<$Res>
    implements $NewsApiDtoCopyWith<$Res> {
  _$NewsApiDtoCopyWithImpl(this._self, this._then);

  final NewsApiDto _self;
  final $Res Function(NewsApiDto) _then;

/// Create a copy of NewsApiDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? totalResults = freezed,Object? articles = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleApiDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsApiDto].
extension NewsApiDtoPatterns on NewsApiDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsApiDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsApiDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsApiDto value)  $default,){
final _that = this;
switch (_that) {
case _NewsApiDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsApiDto value)?  $default,){
final _that = this;
switch (_that) {
case _NewsApiDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  int? totalResults,  List<ArticleApiDto>? articles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsApiDto() when $default != null:
return $default(_that.status,_that.totalResults,_that.articles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  int? totalResults,  List<ArticleApiDto>? articles)  $default,) {final _that = this;
switch (_that) {
case _NewsApiDto():
return $default(_that.status,_that.totalResults,_that.articles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  int? totalResults,  List<ArticleApiDto>? articles)?  $default,) {final _that = this;
switch (_that) {
case _NewsApiDto() when $default != null:
return $default(_that.status,_that.totalResults,_that.articles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewsApiDto implements NewsApiDto {
  const _NewsApiDto({this.status, this.totalResults, final  List<ArticleApiDto>? articles}): _articles = articles;
  factory _NewsApiDto.fromJson(Map<String, dynamic> json) => _$NewsApiDtoFromJson(json);

@override final  String? status;
@override final  int? totalResults;
 final  List<ArticleApiDto>? _articles;
@override List<ArticleApiDto>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of NewsApiDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsApiDtoCopyWith<_NewsApiDto> get copyWith => __$NewsApiDtoCopyWithImpl<_NewsApiDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsApiDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsApiDto&&(identical(other.status, status) || other.status == status)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other._articles, _articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,totalResults,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'NewsApiDto(status: $status, totalResults: $totalResults, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$NewsApiDtoCopyWith<$Res> implements $NewsApiDtoCopyWith<$Res> {
  factory _$NewsApiDtoCopyWith(_NewsApiDto value, $Res Function(_NewsApiDto) _then) = __$NewsApiDtoCopyWithImpl;
@override @useResult
$Res call({
 String? status, int? totalResults, List<ArticleApiDto>? articles
});




}
/// @nodoc
class __$NewsApiDtoCopyWithImpl<$Res>
    implements _$NewsApiDtoCopyWith<$Res> {
  __$NewsApiDtoCopyWithImpl(this._self, this._then);

  final _NewsApiDto _self;
  final $Res Function(_NewsApiDto) _then;

/// Create a copy of NewsApiDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? totalResults = freezed,Object? articles = freezed,}) {
  return _then(_NewsApiDto(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleApiDto>?,
  ));
}


}


/// @nodoc
mixin _$ArticleApiDto {

 SourceApiDto? get source; String? get author; String? get title; String? get description; String? get url; String? get urlToImage; String? get publishedAt; String? get content;
/// Create a copy of ArticleApiDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleApiDtoCopyWith<ArticleApiDto> get copyWith => _$ArticleApiDtoCopyWithImpl<ArticleApiDto>(this as ArticleApiDto, _$identity);

  /// Serializes this ArticleApiDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleApiDto&&(identical(other.source, source) || other.source == source)&&(identical(other.author, author) || other.author == author)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.urlToImage, urlToImage) || other.urlToImage == urlToImage)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,author,title,description,url,urlToImage,publishedAt,content);

@override
String toString() {
  return 'ArticleApiDto(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
}


}

/// @nodoc
abstract mixin class $ArticleApiDtoCopyWith<$Res>  {
  factory $ArticleApiDtoCopyWith(ArticleApiDto value, $Res Function(ArticleApiDto) _then) = _$ArticleApiDtoCopyWithImpl;
@useResult
$Res call({
 SourceApiDto? source, String? author, String? title, String? description, String? url, String? urlToImage, String? publishedAt, String? content
});


$SourceApiDtoCopyWith<$Res>? get source;

}
/// @nodoc
class _$ArticleApiDtoCopyWithImpl<$Res>
    implements $ArticleApiDtoCopyWith<$Res> {
  _$ArticleApiDtoCopyWithImpl(this._self, this._then);

  final ArticleApiDto _self;
  final $Res Function(ArticleApiDto) _then;

/// Create a copy of ArticleApiDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = freezed,Object? author = freezed,Object? title = freezed,Object? description = freezed,Object? url = freezed,Object? urlToImage = freezed,Object? publishedAt = freezed,Object? content = freezed,}) {
  return _then(_self.copyWith(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as SourceApiDto?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,urlToImage: freezed == urlToImage ? _self.urlToImage : urlToImage // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ArticleApiDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceApiDtoCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $SourceApiDtoCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArticleApiDto].
extension ArticleApiDtoPatterns on ArticleApiDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleApiDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleApiDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleApiDto value)  $default,){
final _that = this;
switch (_that) {
case _ArticleApiDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleApiDto value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleApiDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SourceApiDto? source,  String? author,  String? title,  String? description,  String? url,  String? urlToImage,  String? publishedAt,  String? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleApiDto() when $default != null:
return $default(_that.source,_that.author,_that.title,_that.description,_that.url,_that.urlToImage,_that.publishedAt,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SourceApiDto? source,  String? author,  String? title,  String? description,  String? url,  String? urlToImage,  String? publishedAt,  String? content)  $default,) {final _that = this;
switch (_that) {
case _ArticleApiDto():
return $default(_that.source,_that.author,_that.title,_that.description,_that.url,_that.urlToImage,_that.publishedAt,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SourceApiDto? source,  String? author,  String? title,  String? description,  String? url,  String? urlToImage,  String? publishedAt,  String? content)?  $default,) {final _that = this;
switch (_that) {
case _ArticleApiDto() when $default != null:
return $default(_that.source,_that.author,_that.title,_that.description,_that.url,_that.urlToImage,_that.publishedAt,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleApiDto implements ArticleApiDto {
  const _ArticleApiDto({this.source, this.author, this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content});
  factory _ArticleApiDto.fromJson(Map<String, dynamic> json) => _$ArticleApiDtoFromJson(json);

@override final  SourceApiDto? source;
@override final  String? author;
@override final  String? title;
@override final  String? description;
@override final  String? url;
@override final  String? urlToImage;
@override final  String? publishedAt;
@override final  String? content;

/// Create a copy of ArticleApiDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleApiDtoCopyWith<_ArticleApiDto> get copyWith => __$ArticleApiDtoCopyWithImpl<_ArticleApiDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleApiDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleApiDto&&(identical(other.source, source) || other.source == source)&&(identical(other.author, author) || other.author == author)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.urlToImage, urlToImage) || other.urlToImage == urlToImage)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,author,title,description,url,urlToImage,publishedAt,content);

@override
String toString() {
  return 'ArticleApiDto(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
}


}

/// @nodoc
abstract mixin class _$ArticleApiDtoCopyWith<$Res> implements $ArticleApiDtoCopyWith<$Res> {
  factory _$ArticleApiDtoCopyWith(_ArticleApiDto value, $Res Function(_ArticleApiDto) _then) = __$ArticleApiDtoCopyWithImpl;
@override @useResult
$Res call({
 SourceApiDto? source, String? author, String? title, String? description, String? url, String? urlToImage, String? publishedAt, String? content
});


@override $SourceApiDtoCopyWith<$Res>? get source;

}
/// @nodoc
class __$ArticleApiDtoCopyWithImpl<$Res>
    implements _$ArticleApiDtoCopyWith<$Res> {
  __$ArticleApiDtoCopyWithImpl(this._self, this._then);

  final _ArticleApiDto _self;
  final $Res Function(_ArticleApiDto) _then;

/// Create a copy of ArticleApiDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = freezed,Object? author = freezed,Object? title = freezed,Object? description = freezed,Object? url = freezed,Object? urlToImage = freezed,Object? publishedAt = freezed,Object? content = freezed,}) {
  return _then(_ArticleApiDto(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as SourceApiDto?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,urlToImage: freezed == urlToImage ? _self.urlToImage : urlToImage // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ArticleApiDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceApiDtoCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $SourceApiDtoCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}

// dart format on
