import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stunning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stunning Application'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Welcome Message
              const Text(
                'Welcome to our Stunning App!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20), // Add spacing between the Text and Button
              
              // Interactive Button
              ElevatedButton(
                onPressed: () {
                  print('Hello! Button was clicked.');
                },
                child: const Text('Click Me!'),
              ),
              const SizedBox(height: 20), // Add spacing between the Button and Image

              // Show Image from the Internet
              Image.network(
                'https://tinyurl.com/bdfd544u',
                width: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
