import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    final String email = _emailController.text;
    final String password = _passwordController.text;

    // Make a POST request to your backend endpoint for authentication
    final response = await http.post(
      Uri.parse('https://your-backend-endpoint.com/login'),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      // Login successful, process the response data as needed
      final responseData = json.decode(response.body);
      // Perform any necessary actions after successful login

      // Example: Navigating to a home screen after successful login
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Login failed, display an error message
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Incorrect email or password.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
