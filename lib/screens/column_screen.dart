import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Intrest"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            TextButton(onPressed: () {}, child: const Text('Button 2')),
            OutlinedButton(onPressed: () {}, child: const Text('Button 3')),

            // Icon(Icons.star, size: 50),
            // Icon(Icons.star, size: 50),
            // Column(
            //   children: [
            //     Icon(Icons.star, size: 50),
            //     Icon(Icons.star, size: 50),
            //     Icon(Icons.star, size: 50),
            //   ],
            // ),
            // Column(
            //   children: [
            //     Icon(Icons.star, size: 50),
            //     Icon(Icons.star, size: 50),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
