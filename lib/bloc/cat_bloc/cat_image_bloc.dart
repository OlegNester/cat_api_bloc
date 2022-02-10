import 'package:cat_api_bloc/data/models/cat_model/cat_image.dart';
import 'package:cat_api_bloc/data/repositories/cat_image_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'cat_image_bloc.freezed.dart';
part 'cat_image_bloc.g.dart';
part 'cat_image_event.dart';
part 'cat_image_state.dart';

class CatImageBloc extends Bloc<CatImageEvent, CatImageState> with HydratedMixin {
  final CatImageRepo catImageRepo;
  CatImageBloc({required this.catImageRepo}) : super(const CatImageState.loading()) {
    on<CatImageEventFetch>((event, emit) async {
      emit(const CatImageState.loading());

      try {
        List<CatImage> _catImageLoaded = await catImageRepo.getImage(event.page);

        emit(CatImageState.loaded(catImageLoaded: _catImageLoaded));
      } catch (_) {
        emit(const CatImageState.error());
        rethrow;
      }
    });
  }

  @override
  CatImageState? fromJson(Map<String, dynamic> json) => CatImageState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(CatImageState state) => state.toJson();

}