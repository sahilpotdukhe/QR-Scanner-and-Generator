import 'package:flutter/material.dart';
import 'package:qrscan/Screens/GenerateQRScreen.dart';
import 'package:qrscan/Screens/HomePage.dart';
import 'package:qrscan/Screens/QRScannerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
