part of 'cat_image_bloc.dart';

@freezed
class CatImageEvent with _$CatImageEvent {
  const factory CatImageEvent.fetch({
    required int page
  }) = CatImageEventFetch;
}