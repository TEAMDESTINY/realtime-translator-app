import 'package:flutter_tts/flutter_tts.dart';

final tts = FlutterTts();

Future speak(String text) async {
  await tts.speak(text);
}
