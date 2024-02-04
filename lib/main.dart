import 'package:flutter/material.dart';
import './components/custom_button.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'An app that can count to'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ required this.title, super.key });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _displayedString = "You haven't pressed the button yet!";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _displayedString = '$_counter';
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _displayedString = "You haven't pressed the button yet!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'You have pushed the button this many times:',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Text(
                _displayedString,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: FloatingActionButton(
                elevation: 0.0,
                hoverElevation: 0.0,
                focusElevation: 0.0,
                highlightElevation: 0.0,
                onPressed: _resetCounter,
                tooltip: 'Reset',
                child: const Icon(Icons.restart_alt),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: CustomButton(
        key: const Key("custom-button"),
        text: 'Make the counter ${_counter + 1}',
        textColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        splashColor: Colors.blue,
        onPressed: _incrementCounter
      ),
    );
  }
}
