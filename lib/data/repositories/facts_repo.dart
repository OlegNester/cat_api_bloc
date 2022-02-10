import 'dart:convert';
import 'package:http/http.dart' as http;

class FactsRepo {
  final url = 'https://catfact.ninja/facts';
  final _limit = 15;

  Future<List<String>> getFact() async {
    try {
      var response = await http.get(Uri.parse(url + '?limit=$_limit'));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['data'];
        return data.isNotEmpty ? data.map((i) => i['fact'].toString()).toList() : [];

      } else {
        return [];
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}