import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
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
            const CustomTextField(label: "Username"),
            const SizedBox(height: 15),
            const CustomTextField(label: "Password", isPassword: true),
            const SizedBox(height: 25),
            CustomButton(
              text: "Login",
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const LanguageSelectScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
