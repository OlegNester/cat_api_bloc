// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_image_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatImageStateLoading _$$CatImageStateLoadingFromJson(
        Map<String, dynamic> json) =>
    _$CatImageStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CatImageStateLoadingToJson(
        _$CatImageStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CatImageStateLoaded _$$CatImageStateLoadedFromJson(
        Map<String, dynamic> json) =>
    _$CatImageStateLoaded(
      catImageLoaded: (json['catImageLoaded'] as List<dynamic>)
          .map((e) => CatImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CatImageStateLoadedToJson(
        _$CatImageStateLoaded instance) =>
    <String, dynamic>{
      'catImageLoaded': instance.catImageLoaded,
      'runtimeType': instance.$type,
    };

_$CatImageStateError _$$CatImageStateErrorFromJson(Map<String, dynamic> json) =>
    _$CatImageStateError(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CatImageStateErrorToJson(
        _$CatImageStateError instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
