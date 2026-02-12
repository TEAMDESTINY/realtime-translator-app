import 'package:speech_to_text/speech_to_text.dart';

class SpeechService {
  final SpeechToText _speech = SpeechToText();

  Future<String> listen() async {
    await _speech.initialize();
    String words = "";

    await _speech.listen(onResult: (result) {
      words = result.recognizedWords;
    });

    await Future.delayed(const Duration(seconds: 5));
    await _speech.stop();

    return words;
  }
}
