// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatImage _$CatImageFromJson(Map<String, dynamic> json) {
  return _CatImage.fromJson(json);
}

/// @nodoc
class _$CatImageTearOff {
  const _$CatImageTearOff();

  _CatImage call({required String id, required String url, bool? isLike}) {
    return _CatImage(
      id: id,
      url: url,
      isLike: isLike,
    );
  }

  CatImage fromJson(Map<String, Object?> json) {
    return CatImage.fromJson(json);
  }
}

/// @nodoc
const $CatImage = _$CatImageTearOff();

/// @nodoc
mixin _$CatImage {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool? get isLike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatImageCopyWith<CatImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImageCopyWith<$Res> {
  factory $CatImageCopyWith(CatImage value, $Res Function(CatImage) then) =
      _$CatImageCopyWithImpl<$Res>;
  $Res call({String id, String url, bool? isLike});
}

/// @nodoc
class _$CatImageCopyWithImpl<$Res> implements $CatImageCopyWith<$Res> {
  _$CatImageCopyWithImpl(this._value, this._then);

  final CatImage _value;
  // ignore: unused_field
  final $Res Function(CatImage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? isLike = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CatImageCopyWith<$Res> implements $CatImageCopyWith<$Res> {
  factory _$CatImageCopyWith(_CatImage value, $Res Function(_CatImage) then) =
      __$CatImageCopyWithImpl<$Res>;
  @override
  $Res call({String id, String url, bool? isLike});
}

/// @nodoc
class __$CatImageCopyWithImpl<$Res> extends _$CatImageCopyWithImpl<$Res>
    implements _$CatImageCopyWith<$Res> {
  __$CatImageCopyWithImpl(_CatImage _value, $Res Function(_CatImage) _then)
      : super(_value, (v) => _then(v as _CatImage));

  @override
  _CatImage get _value => super._value as _CatImage;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? isLike = freezed,
  }) {
    return _then(_CatImage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatImage with DiagnosticableTreeMixin implements _CatImage {
  _$_CatImage({required this.id, required this.url, this.isLike});

  factory _$_CatImage.fromJson(Map<String, dynamic> json) =>
      _$$_CatImageFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final bool? isLike;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CatImage(id: $id, url: $url, isLike: $isLike)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CatImage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('isLike', isLike));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatImage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.isLike, isLike));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(isLike));

  @JsonKey(ignore: true)
  @override
  _$CatImageCopyWith<_CatImage> get copyWith =>
      __$CatImageCopyWithImpl<_CatImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatImageToJson(this);
  }
}

abstract class _CatImage implements CatImage {
  factory _CatImage({required String id, required String url, bool? isLike}) =
      _$_CatImage;

  factory _CatImage.fromJson(Map<String, dynamic> json) = _$_CatImage.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  bool? get isLike;
  @override
  @JsonKey(ignore: true)
  _$CatImageCopyWith<_CatImage> get copyWith =>
      throw _privateConstructorUsedError;
}
