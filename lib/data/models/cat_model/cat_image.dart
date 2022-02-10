import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'cat_image.freezed.dart';

part 'cat_image.g.dart';

@freezed
class CatImage with _$CatImage {
  factory CatImage({required String id, required String url, bool? isLike}) = _CatImage;

  factory CatImage.fromJson(Map<String, dynamic> json) => _$CatImageFromJson(json);
}
