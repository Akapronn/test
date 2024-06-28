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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 68)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> items = [
    {'name': 'Mickey Mouse', 'image': 'https://example.com/mickey.jpg'},
    {'name': 'Minnie Mouse', 'image': 'https://example.com/minnie.jpg'},
    {'name': 'Goofy', 'image': 'https://example.com/goofy.jpg'},
    {'name': 'Donald Duck', 'image': 'https://example.com/donald.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(items[index]['image']!, width: 50, height: 50),
            title: Text(items[index]['name']!),
          );
        },
      ),
    );
  }
}