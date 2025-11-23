import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        // child: Center(
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     alignment: Alignment.center,
        //     child: const Text("Hello world"),
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: Colors.yellowAccent,
        //       border: BoxBorder.all(color: Colors.black, width: 2),
        //     ),
        //   ),
        // ),
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.centerRight,
            child: Text("Hello"),
          ),
        ),
      ),
    );
  }
}
