import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parallax/home.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // Assurez-vous que Flutter est initialisé ici
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}
