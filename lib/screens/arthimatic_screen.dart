import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  // int first = 0;
  // int second = 0;
  // int sum = 0;
  // int sub = 0;

  //controller
  final TextEditingController firstController = TextEditingController(
    text: '100',
  );
  final TextEditingController secondController = TextEditingController(
    text: '200',
  );
  final _formKey = GlobalKey<FormState>();
  int result = 0;

  void add(int first, int second) {
    setState(() {
      result = first + second;
    });
  }

  void sub(int first, int second) {
    setState(() {
      result = first + second;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First test"), backgroundColor: Colors.green),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                // onChanged: (value) {
                // first = int.tryParse(value) ?? 0;

                // },
                controller: firstController,
                decoration: InputDecoration(
                  labelText: "Enter first number",
                  hintText: "e.g. 12",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter first number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                // onChanged: (value) {
                //   second = int.tryParse(value) ?? 0;
                // },
                controller: secondController,
                decoration: InputDecoration(
                  labelText: "Enter second number",
                  hintText: "e.g. 12",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter second number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // validation
                    if (_formKey.currentState?.validate() == true) {}
                  },
                  child: Text("Sum", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 8),

              Text("Sum is : $result", style: TextStyle(fontSize: 20)),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // validation
                    if (_formKey.currentState?.validate() == true) {
                      // logic
                      sub(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  child: Text("Subtraction", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 8),

              Text("Subtraction is : $result", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
