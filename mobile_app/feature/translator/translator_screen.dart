import 'package:flutter/material.dart';
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
  String translatedText = "";

  void translateDemo() async {
    String result = await translate("Namaste", widget.toLang);
    setState(()=> translatedText = result);
    speak(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Translator")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(translatedText, style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: translateDemo,
              child: Text("Translate Demo"),
            )
          ],
        ),
      ),
    );
  }
}
