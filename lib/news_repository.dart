import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model.dart';

Future<List<news>> getNews(String country) async {

  final String url = 'https://newsapi.org/v2/top-headlines?country=ca&apiKey=API_KEY';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
  final response = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=$country&apiKey=API_KEY'),
      headers: {"Accept": "application/json"});

  var res1 = jsonDecode(response.body);
  Iterable result = res1["articles"];

  var newsapi = new List<news>();


  
  return newsapi = result.map((model) => news.fromJSON(model)).toList();

}
