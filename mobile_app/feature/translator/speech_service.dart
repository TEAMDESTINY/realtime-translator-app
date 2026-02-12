import 'package:speech_to_text/speech_to_text.dart';

class SpeechService {
  final SpeechToText _speech = SpeechToText();

  Future<bool> initSpeech() async {
    return await _speech.initialize();
  }

  Future<String> startListening() async {
    String words = "";

    await _speech.listen(
      onResult: (result) {
        words = result.recognizedWords;
      },
      listenFor: const Duration(seconds: 10),
      pauseFor: const Duration(seconds: 3),
      localeId: "hi_IN",
    );

    await Future.delayed(const Duration(seconds: 5));
    await _speech.stop();

    return words;
  }
}
