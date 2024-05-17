import 'package:flutter/material.dart';
import 'package:reponsividade/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue,
          background: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
