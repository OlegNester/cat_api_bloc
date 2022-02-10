import 'package:cat_api_bloc/bloc/cat_bloc/cat_image_bloc.dart';
import 'package:cat_api_bloc/data/models/cat_model/cat_image.dart';
import 'package:cat_api_bloc/ui/pages/cat_detail_page.dart';
import 'package:cat_api_bloc/ui/widgets/custom_list_tile.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CatPage extends StatefulWidget {
  const CatPage({Key? key}) : super(key: key);

  @override
  _CatPageState createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  List<CatImage> _currentCatImageResult = [];
  int _currentPage = 1;

  final RefreshController refreshController = RefreshController();
  bool _isPagination = false;

  ConnectivityResult? _connectivityResult;

  _getDataCatImage() async {
    _connectivityResult = await Connectivity().checkConnectivity();
    if (_connectivityResult != ConnectivityResult.none) {
      context.read<CatImageBloc>().add(const CatImageEvent.fetch(page: 1));
    }
  }

  @override
  void initState() {
    _getDataCatImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CatImageBloc>().state;
    return state.when(
        loading: () => !_isPagination
            ? _loading(context)
            : _customListView(_currentCatImageResult),
        loaded: (catImageLoaded) {
          if (_isPagination) {
            _currentCatImageResult.addAll(catImageLoaded);
            refreshController.loadComplete();
            _isPagination = false;
          } else {
            _currentCatImageResult = catImageLoaded;
          }

          return _currentCatImageResult.isNotEmpty
              ? _customListView(_currentCatImageResult)
              : const SizedBox();
        },
        error: () => _error(context));
  }

  Widget _loading(BuildContext context) {
    if (_connectivityResult != ConnectivityResult.none) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return _error(context);
    }
  }

  Widget _error(BuildContext context) {
    return const Center(child: Text('No internet connection'));
  }

  Widget _customListView(List<CatImage> catImage) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      enablePullDown: false,
      onLoading: () {
        _isPagination = true;
        _currentPage++;
        context.read<CatImageBloc>().add(CatImageEvent.fetch(page: _currentPage));
      },
      child: ListView.separated(
        separatorBuilder: (_, index) => const SizedBox(
          height: 5,
        ),
        itemCount: catImage.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          CatImage result = catImage[index];
          return InkWell(
              child:
                  Hero(tag: result.id, child: CustomListTile(catImage: result)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CatDetailPage(catImage: result,),
                    ));
              });
        },
      ),
    );
  }
}
