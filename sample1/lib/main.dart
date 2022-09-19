import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void callback() {
    print('login');
  }

  final title = "login";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Software Design - Sample1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(labelText: 'User ID'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            ElevatedButton(
              onPressed: callback,
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
