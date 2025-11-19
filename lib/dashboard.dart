import 'package:batch_35d_classwork/screens/armstrong_screen.dart';
import 'package:batch_35d_classwork/screens/arthimatic_screen.dart';
import 'package:batch_35d_classwork/screens/column_screen.dart';
import 'package:batch_35d_classwork/screens/flutter_layout_screen.dart';
import 'package:batch_35d_classwork/screens/pallindrome_screen.dart';
import 'package:batch_35d_classwork/screens/rich_text_screen.dart';
import 'package:batch_35d_classwork/screens/row_screen.dart';
import 'package:batch_35d_classwork/screens/simple_interest.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"), backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArithmeticScreen(),
                  ),
                );
              },
              child: const Text('Arthmatic'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleInterest(),
                  ),
                );
              },
              child: const Text('Simple Intrest'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArmstrongNumber(),
                  ),
                );
              },
              child: const Text('Armstrong'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PalindromeNumber(),
                  ),
                );
              },
              child: const Text('Pallindrome'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FlutterLayoutScreen(),
                  ),
                );
              },
              child: const Text('Layout'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RowScreen()),
                );
              },
              child: const Text('Row screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ColumnScreen()),
                );
              },
              child: const Text('column screen'),
            ),
          ],
        ),
      ),
    );
  }
}
