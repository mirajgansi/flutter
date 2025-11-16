import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  final TextEditingController firstController = TextEditingController(
    text: '20',
  );
  final TextEditingController secondController = TextEditingController(
    text: '10',
  );

  final TextEditingController thirdController = TextEditingController(
    text: '15',
  );

  final _formKey = GlobalKey<FormState>();
  double result = 0;

  void si(int P, int R, int T) {
    setState(() {
      result = (P * T * R) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Intrest"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstController,
                decoration: InputDecoration(
                  labelText: "Enter first number",
                  hintText: "eg 10",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter first number";
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondController,
                decoration: InputDecoration(
                  labelText: "Enter second number",
                  hintText: "eg 10",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter second number";
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: thirdController,
                decoration: InputDecoration(
                  labelText: "Enter Third number",
                  hintText: "eg 10",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter third number";
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
                    if (_formKey.currentState?.validate() == true) {
                      int P = int.parse(firstController.text);
                      int R = int.parse(secondController.text);
                      int T = int.parse(thirdController.text);

                      si(P, R, T); // <-- your missing line
                    }
                  },
                  child: Text("result", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 8),
              Text("result is : $result", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
