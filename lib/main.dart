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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

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
          spacing: 40,
          children: [
            const Text('You have pushed the button this many times:'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text("increment"),
                ),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Text("decrement"),
                ),
                ElevatedButton(onPressed: _resetCounter, child: Text("reset")),
                ElevatedButton(
                  onPressed: _doubleCounter,
                  child: Text("double"),
                ),
                ElevatedButton(onPressed: _halveCounter, child: Text("halve")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _doubleCounter() {
    setState(() {
      _counter *= 2;
    });
  }

  void _halveCounter() {
    setState(() {
      _counter = _counter ~/ 2;
    });
  }
}
