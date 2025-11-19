import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RichText(
        text: const TextSpan(
          text: 'ello',
          style: TextStyle(color: Colors.black, fontSize: 30),
          children: <TextSpan>[
            TextSpan(
              text: "bold ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            TextSpan(text: 'World!'),
          ],
        ),
      ),
    );
  }
}
