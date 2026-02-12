import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../core/constants/api_constants.dart';

Future<String> translate(String text, String lang) async {
  final url = Uri.parse("${ApiConstants.baseUrl}/translate?text=$text&lang=$lang");
  final res = await http.get(url);
  return json.decode(res.body)["translated"];
}
