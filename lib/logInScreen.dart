import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  String _eMail = '';
  LogInScreen({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In Screens'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) => value!.isEmpty ? 'Enter Email' : null,
              onSaved: (value) => _eMail = value!,
            ),
          ],
        ),
      ),
    );
  }
}
