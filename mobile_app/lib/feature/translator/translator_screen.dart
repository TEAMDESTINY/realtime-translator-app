import 'package:flutter/material.dart';
import 'speech_service.dart';
import 'translate_service.dart';
import 'tts_service.dart';

class TranslatorScreen extends StatefulWidget {
  final String fromLang;
  final String toLang;

  const TranslatorScreen(this.fromLang, this.toLang, {super.key});

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  String resultText = "";
  final speech = SpeechService();

  Future startTranslation() async {
    String spoken = await speech.listen();
    String translated = await translate(spoken, widget.toLang);
    setState(()=> resultText = translated);
    speak(translated);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Translator")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(resultText, style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: startTranslation,
              child: const Text("🎤 Speak & Translate"),
            )
          ],
        ),
      ),
    );
  }
}
