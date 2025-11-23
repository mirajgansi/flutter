import 'package:batch_35d_classwork/common/my_snack_bar.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () => showMySnackBar(context: context, message: "hello"),
              // ScaffoldMessenger.of(context).showSnackBar(
              //   const SnackBar(
              //     backgroundColor: Colors.red,
              //     content: Text("I am container 1"),
              //     duration: Duration(seconds: 5),
              //     behavior: SnackBarBehavior.floating,
              //   ),
              // ),
              child: Container(
                width: double.infinity,
                color: Colors.yellow,
                child: Text("Contaner 1"),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () => showMySnackBar(
                context: context,
                message: "hello 2",
                color: Colors.red,
              ),

              // ScaffoldMessenger.of(context).showSnackBar(
              //   const SnackBar(
              //     content: Text("I am container 2"),
              //     duration: Duration(seconds: 5),
              //   ),
              // ),
              child: Container(
                width: double.infinity,
                color: Colors.green,
                child: Text("container 2"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
