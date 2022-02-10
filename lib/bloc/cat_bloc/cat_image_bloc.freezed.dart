// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatImageEventTearOff {
  const _$CatImageEventTearOff();

  CatImageEventFetch fetch({required int page}) {
    return CatImageEventFetch(
      page: page,
    );
  }
}

/// @nodoc
const $CatImageEvent = _$CatImageEventTearOff();

/// @nodoc
mixin _$CatImageEvent {
  int get page => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatImageEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CatImageEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatImageEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatImageEventCopyWith<CatImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImageEventCopyWith<$Res> {
  factory $CatImageEventCopyWith(
          CatImageEvent value, $Res Function(CatImageEvent) then) =
      _$CatImageEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$CatImageEventCopyWithImpl<$Res>
    implements $CatImageEventCopyWith<$Res> {
  _$CatImageEventCopyWithImpl(this._value, this._then);

  final CatImageEvent _value;
  // ignore: unused_field
  final $Res Function(CatImageEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $CatImageEventFetchCopyWith<$Res>
    implements $CatImageEventCopyWith<$Res> {
  factory $CatImageEventFetchCopyWith(
          CatImageEventFetch value, $Res Function(CatImageEventFetch) then) =
      _$CatImageEventFetchCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class _$CatImageEventFetchCopyWithImpl<$Res>
    extends _$CatImageEventCopyWithImpl<$Res>
    implements $CatImageEventFetchCopyWith<$Res> {
  _$CatImageEventFetchCopyWithImpl(
      CatImageEventFetch _value, $Res Function(CatImageEventFetch) _then)
      : super(_value, (v) => _then(v as CatImageEventFetch));

  @override
  CatImageEventFetch get _value => super._value as CatImageEventFetch;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(CatImageEventFetch(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CatImageEventFetch implements CatImageEventFetch {
  const _$CatImageEventFetch({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'CatImageEvent.fetch(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatImageEventFetch &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $CatImageEventFetchCopyWith<CatImageEventFetch> get copyWith =>
      _$CatImageEventFetchCopyWithImpl<CatImageEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetch,
  }) {
    return fetch(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetch,
  }) {
    return fetch?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatImageEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CatImageEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatImageEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CatImageEventFetch implements CatImageEvent {
  const factory CatImageEventFetch({required int page}) = _$CatImageEventFetch;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  $CatImageEventFetchCopyWith<CatImageEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

CatImageState _$CatImageStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return CatImageStateLoading.fromJson(json);
    case 'loaded':
      return CatImageStateLoaded.fromJson(json);
    case 'error':
      return CatImageStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CatImageState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$CatImageStateTearOff {
  const _$CatImageStateTearOff();

  CatImageStateLoading loading() {
    return const CatImageStateLoading();
  }

  CatImageStateLoaded loaded({required List<CatImage> catImageLoaded}) {
    return CatImageStateLoaded(
      catImageLoaded: catImageLoaded,
    );
  }

  CatImageStateError error() {
    return const CatImageStateError();
  }

  CatImageState fromJson(Map<String, Object?> json) {
    return CatImageState.fromJson(json);
  }
}

/// @nodoc
const $CatImageState = _$CatImageStateTearOff();

/// @nodoc
mixin _$CatImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CatImage> catImageLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CatImage> catImageLoaded)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CatImage> catImageLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatImageStateLoading value) loading,
    required TResult Function(CatImageStateLoaded value) loaded,
    required TResult Function(CatImageStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CatImageStateLoading value)? loading,
    TResult Function(CatImageStateLoaded value)? loaded,
    TResult Function(CatImageStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatImageStateLoading value)? loading,
    TResult Function(CatImageStateLoaded value)? loaded,
    TResult Function(CatImageStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImageStateCopyWith<$Res> {
  factory $CatImageStateCopyWith(
          CatImageState value, $Res Function(CatImageState) then) =
      _$CatImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatImageStateCopyWithImpl<$Res>
    implements $CatImageStateCopyWith<$Res> {
  _$CatImageStateCopyWithImpl(this._value, this._then);

  final CatImageState _value;
  // ignore: unused_field
  final $Res Function(CatImageState) _then;
}

/// @nodoc
abstract class $CatImageStateLoadingCopyWith<$Res> {
  factory $CatImageStateLoadingCopyWith(CatImageStateLoading value,
          $Res Function(CatImageStateLoading) then) =
      _$CatImageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatImageStateLoadingCopyWithImpl<$Res>
    extends _$CatImageStateCopyWithImpl<$Res>
    implements $CatImageStateLoadingCopyWith<$Res> {
  _$CatImageStateLoadingCopyWithImpl(
      CatImageStateLoading _value, $Res Function(CatImageStateLoading) _then)
      : super(_value, (v) => _then(v as CatImageStateLoading));

  @override
  CatImageStateLoading get _value => super._value as CatImageStateLoading;
}

/// @nodoc
@JsonSerializable()
class _$CatImageStateLoading implements CatImageStateLoading {
  const _$CatImageStateLoading({String? $type}) : $type = $type ?? 'loading';

  factory _$CatImageStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$CatImageStateLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CatImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CatImageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CatImage> catImageLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CatImage> catImageLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CatImage> catImageLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatImageStateLoading value) loading,
    required TResult Function(CatImageStateLoaded value) loaded,
    required TResult Function(CatImageStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CatImageStateLoading value)? loading,
    TResult Function(CatImageStateLoaded value)? loaded,
    TResult Function(CatImageStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatImageStateLoading value)? loading,
    TResult Function(CatImageStateLoaded value)? loaded,
    TResult Function(CatImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CatImageStateLoadingToJson(this);
  }
}

abstract class CatImageStateLoading implements CatImageState {
  const factory CatImageStateLoading() = _$CatImageStateLoading;

  factory CatImageStateLoading.fromJson(Map<String, dynamic> json) =
      _$CatImageStateLoading.fromJson;
}

/// @nodoc
abstract class $CatImageStateLoadedCopyWith<$Res> {
  factory $CatImageStateLoadedCopyWith(
          CatImageStateLoaded value, $Res Function(CatImageStateLoaded) then) =
      _$CatImageStateLoadedCopyWithImpl<$Res>;
  $Res call({List<CatImage> catImageLoaded});
}

/// @nodoc
class _$CatImageStateLoadedCopyWithImpl<$Res>
    extends _$CatImageStateCopyWithImpl<$Res>
    implements $CatImageStateLoadedCopyWith<$Res> {
  _$CatImageStateLoadedCopyWithImpl(
      CatImageStateLoaded _value, $Res Function(CatImageStateLoaded) _then)
      : super(_value, (v) => _then(v as CatImageStateLoaded));

  @override
  CatImageStateLoaded get _value => super._value as CatImageStateLoaded;

  @override
  $Res call({
    Object? catImageLoaded = freezed,
  }) {
    return _then(CatImageStateLoaded(
      catImageLoaded: catImageLoaded == freezed
          ? _value.catImageLoaded
          : catImageLoaded // ignore: cast_nullable_to_non_nullable
              as List<CatImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatImageStateLoaded implements CatImageStateLoaded {
  const _$CatImageStateLoaded({required this.catImageLoaded, String? $type})
      : $type = $type ?? 'loaded';

  factory _$CatImageStateLoaded.fromJson(Map<String, dynamic> json) =>
      _$$CatImageStateLoadedFromJson(json);

  @override
  final List<CatImage> catImageLoaded;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CatImageState.loaded(catImageLoaded: $catImageLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatImageStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.catImageLoaded, catImageLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(catImageLoaded));

  @JsonKey(ignore: true)
  @override
  $CatImageStateLoadedCopyWith<CatImageStateLoaded> get copyWith =>
      _$CatImageStateLoadedCopyWithImpl<CatImageStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CatImage> catImageLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(catImageLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CatImage> catImageLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(catImageLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CatImage> catImageLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(catImageLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatImageStateLoading value) loading,
    required TResult Function(CatImageStateLoaded value) loaded,
    required TResult Function(CatImageStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CatImageStateLoading value)? loading,
    TResult Function(CatImageStateLoaded value)? loaded,
    TResult Function(CatImageStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatImageStateLoading value)? loading,
    TResult Function(CatImageStateLoaded value)? loaded,
    TResult Function(CatImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CatImageStateLoadedToJson(this);
  }
}

abstract class CatImageStateLoaded implements CatImageState {
  const factory CatImageStateLoaded({required List<CatImage> catImageLoaded}) =
      _$CatImageStateLoaded;

  factory CatImageStateLoaded.fromJson(Map<String, dynamic> json) =
      _$CatImageStateLoaded.fromJson;

  List<CatImage> get catImageLoaded;
  @JsonKey(ignore: true)
  $CatImageStateLoadedCopyWith<CatImageStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImageStateErrorCopyWith<$Res> {
  factory $CatImageStateErrorCopyWith(
          CatImageStateError value, $Res Function(CatImageStateError) then) =
      _$CatImageStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatImageStateErrorCopyWithImpl<$Res>
    extends _$CatImageStateCopyWithImpl<$Res>
    implements $CatImageStateErrorCopyWith<$Res> {
  _$CatImageStateErrorCopyWithImpl(
      CatImageStateError _value, $Res Function(CatImageStateError) _then)
      : super(_value, (v) => _then(v as CatImageStateError));

  @override
  CatImageStateError get _value => super._value as CatImageStateError;
}

/// @nodoc
@JsonSerializable()
class _$CatImageStateError implements CatImageStateError {
  const _$CatImageStateError({String? $type}) : $type = $type ?? 'error';

  factory _$CatImageStateError.fromJson(Map<String, dynamic> json) =>
      _$$CatImageStateErrorFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CatImageState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CatImageStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CatImage> catImageLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CatImage> catImageLoaded)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CatImage> catImageLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatImageStateLoading value) loading,
    required TResult Function(CatImageStateLoaded value) loaded,
    required TResult Function(CatImageStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CatImageStateLoading value)? loading,
    TResult Function(CatImageStateLoaded value)? loaded,
    TResult Function(CatImageStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatImageStateLoading value)? loading,
    TResult Function(CatImageStateLoaded value)? loaded,
    TResult Function(CatImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CatImageStateErrorToJson(this);
  }
}

abstract class CatImageStateError implements CatImageState {
  const factory CatImageStateError() = _$CatImageStateError;

  factory CatImageStateError.fromJson(Map<String, dynamic> json) =
      _$CatImageStateError.fromJson;
}
