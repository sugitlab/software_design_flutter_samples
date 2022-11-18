import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: HelloApp(),
      ),
    );
  }
}

class HelloApp extends StatefulWidget {
  const HelloApp({super.key});

  @override
  State<HelloApp> createState() => _HelloAppState();
}

class _HelloAppState extends State<HelloApp> {
  _HelloAppState();

  final List<String> greets = [
    'Hello',
    'Hello',
    'Hello',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Add Hello'),
              onPressed: () => setState(() => greets.add('Hello')),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: greets.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      '${greets.elementAt(index)} - $index',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HelloApp2 extends StatefulWidget {
  const HelloApp2({super.key});

  @override
  State<HelloApp2> createState() => _HelloApp2State();
}

class _HelloApp2State extends State<HelloApp2> {
  _HelloApp2State();

  final List<String> greets = [];

  _addHello() {
    setState(() => greets.add('Hello'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Add Hello'),
              onPressed: () {
                _addHello();
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: greets.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      '${greets.elementAt(index)} - $index',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
