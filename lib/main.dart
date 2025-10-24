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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _greetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: size.width * 0.5),
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      iconColor: Colors.white,
                      foregroundColor: Colors.white,
                    ),
                    child: Expanded(
                      child: Row(
                        spacing: 16,
                        children: [Icon(Icons.add), Text("increment")],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    child: Text("decrement"),
                  ),
                  ElevatedButton(
                    onPressed: _resetCounter,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      iconColor: Colors.white,
                      foregroundColor: Colors.white,
                    ),
                    child: Expanded(
                      child: Row(
                        spacing: 16,
                        children: [Icon(Icons.close), Text("decrement")],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _doubleCounter,
                    child: Text("double"),
                  ),
                  ElevatedButton(
                    onPressed: _halveCounter,
                    child: Text("halve"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _greetController,
                      decoration: InputDecoration(
                        suffix: IconButton(
                          onPressed: _clearGreet,
                          icon: Icon(Icons.clear),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        suffix: IconButton(
                          onPressed: _clearName,
                          icon: Icon(Icons.clear),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ValueListenableBuilder(
                valueListenable: _greetController,
                builder: (context, greet, child) {
                  return ValueListenableBuilder(
                    valueListenable: _nameController,
                    builder: (context, name, child) {
                      return Text("${greet.text} ${name.text} !");
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _clearGreet() {
    _greetController.clear();
  }

  void _clearName() {
    _nameController.clear();
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
