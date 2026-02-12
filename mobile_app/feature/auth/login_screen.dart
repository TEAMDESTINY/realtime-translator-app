import 'package:flutter/material.dart';
import '../language/language_select_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: InputDecoration(labelText: "Username")),
            SizedBox(height: 15),
            TextField(obscureText: true, decoration: InputDecoration(labelText: "Password")),
            SizedBox(height: 25),
            ElevatedButton(
              child: Text("Login"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => const LanguageSelectScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
