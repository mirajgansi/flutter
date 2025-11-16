import 'package:flutter/material.dart';

class ArmstrongNumber extends StatefulWidget {
  const ArmstrongNumber({super.key});

  @override
  State<ArmstrongNumber> createState() => _ArmstrongNumberState();
}

class _ArmstrongNumberState extends State<ArmstrongNumber> {
  final TextEditingController numberController = TextEditingController(
    text: '153',
  );
  final _formKey = GlobalKey<FormState>();

  String resultText = '';

  void checkArmstrong(int n) {
    setState(() {
      resultText = isArmstrong(n)
          ? '$n is an Armstrong number.'
          : '$n is NOT an Armstrong number.';
    });
  }

  bool isArmstrong(int n) {
    // Armstrong (narcissistic) number logic: sum of each digit^numDigits equals the number
    final digits = n.abs().toString().split('').map(int.parse).toList();
    final power = digits.length;
    final sum = digits.map((d) => powInt(d, power)).reduce((a, b) => a + b);
    return sum == n;
  }

  int powInt(int base, int exp) {
    // small integer power without using dart:math's pow which returns num
    int res = 1;
    for (int i = 0; i < exp; i++) {
      res *= base;
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Armstrong Number Checker'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: numberController,
                decoration: const InputDecoration(
                  labelText: 'Enter a number',
                  hintText: 'eg 153',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'please enter a number';
                  if (int.tryParse(value) == null)
                    return 'please enter a valid integer';
                  return null;
                },
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    final val = int.parse(numberController.text);
                    checkArmstrong(val);
                  }
                },
                child: const Text('Check', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 12),
              Text(resultText, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
