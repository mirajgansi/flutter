import 'package:flutter/material.dart';

class Arthmatic2Screen extends StatefulWidget {
  const Arthmatic2Screen({super.key});

  @override
  State<Arthmatic2Screen> createState() => _Arthmatic2ScreenState();
}

class _Arthmatic2ScreenState extends State<Arthmatic2Screen> {
  int selectedValue = 1;

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
      appBar: AppBar(
        title: const Text("Arithmetic "),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.number,
                  controller: firstController,
                  decoration: const InputDecoration(
                    labelText: "Enter first number",
                    hintText: "e.g. 12",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: secondController,
                  decoration: const InputDecoration(
                    labelText: "Enter second number",
                    hintText: "e.g. 12",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),

                RadioListTile(
                  title: const Text('Sum'),
                  value: 1,

                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),

                RadioListTile(
                  title: const Text('Subtraction'),
                  value: 2,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),

                RadioListTile(
                  title: const Text('Division'),
                  value: 3,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Division'),
                  value: 3,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Division'),
                  value: 3,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),

                RadioListTile(
                  title: const Text('Multiplication'),
                  value: 4,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Calculate'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
