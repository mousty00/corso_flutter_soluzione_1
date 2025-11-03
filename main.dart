import "dart:math";

import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color = Colors.deepPurple;
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Color changer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: color,
          brightness: isDark ? Brightness.dark : Brightness.light,
        ),
      ),
      home: Builder(
        builder: (context) {
          final theme = Theme.of(context);

          return Scaffold(
            appBar: AppBar(
              backgroundColor: theme.colorScheme.inversePrimary,
              title: const Text("Color changer"),
              actions: [
                Switch(
                  value: isDark,
                  onChanged: (value) {
                    setState(() {
                      isDark = value;
                    });
                  },
                ),
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      setState(() {
                        final random = Random();
                        final randomInt = random.nextInt(0xFFFFFFFF);
                        final randomColor = Color(randomInt);
                        color = randomColor;
                      });
                    },
                    icon: const Icon(Icons.shuffle),
                    label: const Text("randomize me"),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          color = Colors.red;
                        });
                      },
                      child: const Text("Red"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          color = Colors.green;
                        });
                      },
                      child: const Text("Green"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          color = Colors.blue;
                        });
                      },
                      child: const Text("Blue"),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
