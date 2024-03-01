# flutter_ui_library

/// Wait, it's being created. >>> widgetbook for flutter_ui_library


## Getting Started

Todo: ###

## How to use library UiButton

```dart
// Example of usage
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
      title: 'Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
```

```dart
// Example UiButton Sent Param All ***Ex2 ***

/// *** All parameters are optional. ***

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: UiButton(
          /// The callback function to be called when the button is pressed.
          onPressed: () {
            /// Your onTap logic here
          },
          title: 'Button',
          /// The background color of the button.
          backgroundColor: const Color(0xFFFFFFFF),
          width: 150,
          height: 50,
          textStyle: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          fontColor: const Color(0xFF000000),
          fontSize: 14,
          fontWeight: FontWeight.normal,
          /// The border radius of the button.
          borderRadius: 30.0,
          borderRadiusColor: const Color(0xFF000000),
          disableColor: const Color(0xFFD9D9D9),
          loadingIconColor: const Color(0xFFD9D9D9),
          strokeWidth: 4.0,
          loadingIconWidth: 0.0,
          statusButton: 'loading', /// 'enable'  , 'disable' , 'loading'
        ),
      ),
    );
  }
}
```
