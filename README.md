# widgetbook for flutter ui library

https://github.com/kanha-pakkhemaya/widgetbook-for-flutter-ui-library/tree/master

## Getting Started

Todo: ###

## How to use

```dart
// ตัวอย่างการเรียกใช้งาน
import 'package:flutter_ui_library/flutter_ui_library.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Button Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Default Button *** Ex1 ***
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Button(),
      ),
    );
  }
}

// Default Button ***Ex2***
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Button(),
      ),
    );
  }
}

// Example Button ***Ex3***
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Button(
          title: 'Button',
          backgroundColor: Color.fromARGB(255, 176, 233, 101),
          width: 150,
          height: 50,
          fontColor: Color.fromARGB(255, 242, 3, 250),
          fontSize: 14,
          fontWeight: FontWeight.normal,
          borderRadius: 30.0,
          borderRadiusColor: Color.fromARGB(255, 194, 48, 48),
          statusButton: 'enable',
        ),
      ),
    );
  }
}

// Example TextStyle ***Ex4***
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Button(
          textStyle: TextStyle(
            color: Color.fromARGB(255, 248, 3, 3),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

// Example Loading ***Ex5***
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Button(
          statusButton: 'loading',
          strokeWidth: 4.0,
          loadingIconWidth: 0.0,
          loadingIconColor: Color.fromARGB(255, 1, 250, 34),
        ),
      ),
    );
  }
}

// Example Disable ***Ex6***
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Button(
          statusButton: 'disable',
          disableColor: Color(0xFFD9D9D9),
        ),
      ),
    );
  }
}
```
