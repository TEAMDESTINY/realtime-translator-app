import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> translate(String text, String lang) async {
  final url = Uri.parse("http://127.0.0.1:10000/translate?text=$text&lang=$lang");
  final res = await http.get(url);
  final data = json.decode(res.body);
  return data["translated"];
}
