import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Rendering Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Text('First', style: TextStyle(fontSize: 24)),
            Text('Second', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

class DemoItem extends StatelessWidget {
  const DemoItem({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    print('DemoItem BUILD - ID:$id');
    return ListTile(
      leading: CircleAvatar(child: Text(id)),
      title: Text(
        'Item $id',
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class DemoItem2 extends StatelessWidget {
  const DemoItem2({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    print('DemoItem2 BUILD - ID:$id');
    return CircleAvatar(child: Text(id));
  }
}

/// * Column Widget with 100 children
class Demo1 extends StatelessWidget {
  Demo1({super.key});
  final arr = [for (var i = 0; i < 100; ++i) '#$i'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: arr.map((item) => DemoItem(id: item)).toList(),
        ),
      ),
    );
  }
}

/// * Column Widget with 100 children
/// * with SingleChildScrollView
class Demo2 extends StatelessWidget {
  Demo2({super.key});
  final arr = [for (var i = 0; i < 100; ++i) '#$i'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: arr.map((item) => DemoItem(id: item)).toList(),
          ),
        ),
      ),
    );
  }
}

/// * ListView Widget with 100 children
class Demo3 extends StatelessWidget {
  Demo3({super.key});
  final arr = [for (var i = 0; i < 100; ++i) '#$i'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: arr.map((item) => DemoItem(id: item)).toList(),
        ),
      ),
    );
  }
}

/// * Column Widget + SingleChildScrollView Widget with 100 children
class Demo4 extends StatelessWidget {
  Demo4({super.key});
  final arr = [for (var i = 0; i < 100; ++i) '#$i'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: arr.map((item) => DemoItem(id: item)).toList(),
          ),
        ),
      ),
    );
  }
}

/// * Complex Arrangement
/// * Column
/// ** Row
/// ** Column
class Demo5 extends StatelessWidget {
  Demo5({super.key});
  final arr = [for (var i = 0; i < 100; ++i) '#$i'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: arr.map((item) => DemoItem2(id: item)).toList(),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: arr.map((item) => DemoItem(id: item)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// * Complex Arrangement
/// * Column
/// ** List Horizontal
/// ** List Vertical
class Demo6 extends StatelessWidget {
  Demo6({super.key});
  final arr = [for (var i = 0; i < 100; ++i) '#$i'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: arr.map((item) => DemoItem2(id: item)).toList(),
                ),
              ),
              SizedBox(
                height: 800,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: arr.map((item) => DemoItem(id: item)).toList(),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: arr.map((item) => DemoItem2(id: item)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// * Complex Arrangement
/// * List Vertical
/// ** List Horizontal
class Demo7 extends StatelessWidget {
  Demo7({super.key});
  final arr = [for (var i = 0; i < 100; ++i) '#$i'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: arr
                .map(
                  (item) => SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: arr.map((item) => DemoItem2(id: item)).toList(),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
