import 'dart:convert';

import 'package:cat_api_bloc/data/models/cat_model/cat_image.dart';
import 'package:http/http.dart' as http;

class CatImageRepo {
  final url = 'https://api.thecatapi.com/v1/images/search';
  final _type = 'jpg,png';
  final _limit = 15;
  final _order = 'Desc';
  final _apiKey = '66bb6d5c-f234-49e6-a69d-f934184b601a';

  late Iterable iterable;

  Future<List<CatImage>> getImage(int page) async {
    try {
      var response = await http.get(Uri.parse(url +
          '?mime_types=$_type' + '&limit=$_limit&page=$page&order=$_order&api-key=$_apiKey'));

      Iterable iterable = json.decode(response.body);
      return List<CatImage>.from(iterable.map((model) => CatImage.fromJson(model)));
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}