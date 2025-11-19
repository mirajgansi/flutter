import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter layout"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: 400,
          height: 80,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.black),
              left: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Icon(Icons.phone, color: Colors.black),
                  SizedBox(height: 20),
                  Text("Call", style: TextStyle(fontSize: 14)),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.navigation, color: Colors.black),
                  SizedBox(height: 20),
                  Text('Route', style: TextStyle(fontSize: 14)),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.share, color: Colors.black),
                  SizedBox(height: 20),

                  Text('share'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
