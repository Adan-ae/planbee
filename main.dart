import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productivity App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mood Tracker'),
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
  int _mood = 0;

  void _updateMood(int mood) {
    setState(() {
      _mood = mood;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'How are you feeling today?',
            ),
            Text(
              'Mood: $_mood',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.sentiment_very_dissatisfied),
                  onPressed: () => _updateMood(1),
                ),
                IconButton(
                  icon: const Icon(Icons.sentiment_dissatisfied),
                  onPressed: () => _updateMood(2),
                ),
                IconButton(
                  icon: const Icon(Icons.sentiment_neutral),
                  onPressed: () => _updateMood(3),
                ),
                IconButton(
                  icon: const Icon(Icons.sentiment_satisfied),
                  onPressed: () => _updateMood(4),
                ),
                IconButton(
                  icon: const Icon(Icons.sentiment_very_satisfied),
                  onPressed: () => _updateMood(5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}