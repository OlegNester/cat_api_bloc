part of 'cat_image_bloc.dart';

@freezed
class CatImageState with _$CatImageState {
  const factory CatImageState.loading() = CatImageStateLoading;
  const factory CatImageState.loaded({required List<CatImage> catImageLoaded}) = CatImageStateLoaded;
  const factory CatImageState.error() = CatImageStateError;

  factory CatImageState.fromJson(Map<String, dynamic> json) => _$CatImageStateFromJson(json);
}