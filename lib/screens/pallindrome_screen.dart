import 'package:flutter/material.dart';

class PalindromeNumber extends StatefulWidget {
  const PalindromeNumber({super.key});

  @override
  State<PalindromeNumber> createState() => _PalindromeNumberState();
}

class _PalindromeNumberState extends State<PalindromeNumber> {
  final TextEditingController numberController = TextEditingController(
    text: '121',
  );
  final _formKey = GlobalKey<FormState>();

  String result = '';

  void checkPalindromeNumber(int n) {
    setState(() {
      result = isPalindrome(n)
          ? "$n is a Palindrome number."
          : "$n is NOT a Palindrome number.";
    });
  }

  bool isPalindrome(int n) {
    int original = n;
    int reversed = 0;

    while (n > 0) {
      int digit = n % 10;
      reversed = reversed * 10 + digit;
      n ~/= 10;
    }

    return original == reversed;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome Number Checker"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter a number",
                  hintText: "Eg: 121",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a number";
                  }
                  if (int.tryParse(value) == null) {
                    return "Enter only numbers";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() == true) {
                      int number = int.parse(numberController.text);
                      checkPalindromeNumber(number);
                    }
                  },
                  child: const Text("Check", style: TextStyle(fontSize: 18)),
                ),
              ),
              const SizedBox(height: 12),
              Text(result, style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
