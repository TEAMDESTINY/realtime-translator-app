import 'package:flutter/material.dart';
import '../translator/session_screen.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final _user = TextEditingController();
  final _pass = TextEditingController();
  String? _err;

  void _login() {
    final u = _user.text.trim();
    final p = _pass.text.trim();

    if (u == "admin123" && p == "admin@123") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SessionScreen(isAdmin: true)),
      );
    } else {
      setState(() => _err = "Invalid credentials");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Admin Login",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 24),
                  TextField(
                    controller: _user,
                    decoration: const InputDecoration(labelText: "Username"),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _pass,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: "Password"),
                  ),
                  const SizedBox(height: 16),
                  if (_err != null)
                    Text(_err!, style: const TextStyle(color: Colors.red)),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _login,
                      child: const Text("Login"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
