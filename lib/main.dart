import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 82, 4, 218)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cashy"),
          backgroundColor: const Color.fromARGB(255, 82, 4, 218),
          foregroundColor: Colors.white,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.email))
          ],
        ),
        body: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}

