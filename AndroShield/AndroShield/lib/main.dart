import 'package:flutter/material.dart';
import 'package:AndroShield/screens/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AndroSheild',
      theme: ThemeData(primaryColor: const Color(0xFF4A00E0)),
      home: const Home(),
    );
  }
}