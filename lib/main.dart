import 'package:batch_35d_classwork/dashboard.dart';
import 'package:batch_35d_classwork/screens/flexible_expanded_screen.dart';
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
      home: const FlexibleExpandedScreen(),
    );
  }
}
