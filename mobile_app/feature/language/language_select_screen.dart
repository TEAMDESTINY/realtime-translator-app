import 'package:flutter/material.dart';
import '../translator/translator_screen.dart';

class LanguageSelectScreen extends StatefulWidget {
  const LanguageSelectScreen({super.key});

  @override
  State<LanguageSelectScreen> createState() => _LanguageSelectScreenState();
}

class _LanguageSelectScreenState extends State<LanguageSelectScreen> {
  String fromLang = "hi";
  String toLang = "en";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Languages")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(value: fromLang, items: const [
            DropdownMenuItem(value: "hi", child: Text("Hindi")),
            DropdownMenuItem(value: "en", child: Text("English")),
          ], onChanged: (v)=> setState(()=> fromLang=v!)),

          DropdownButton(value: toLang, items: const [
            DropdownMenuItem(value: "en", child: Text("English")),
            DropdownMenuItem(value: "hi", child: Text("Hindi")),
          ], onChanged: (v)=> setState(()=> toLang=v!)),

          ElevatedButton(
            child: Text("Start Translator"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => TranslatorScreen(fromLang, toLang)));
            },
          )
        ],
      ),
    );
  }
}
