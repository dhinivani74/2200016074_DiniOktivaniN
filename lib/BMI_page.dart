import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BMIPage(),
  ));
}

class BMIPage extends StatefulWidget {
  @override
  _BMIPageState createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  double? _bmiResult;
  String? _bmiCategory;
  Color _bmiCategoryColor = Colors.black;

  void _calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    setState(() {
      _bmiResult = weight / (height * height);

      if (_bmiResult! < 18.5) {
        _bmiCategory = 'Underweight';
        _bmiCategoryColor = Colors.yellow;
      } else if (_bmiResult! >= 18.5 && _bmiResult! < 24.9) {
        _bmiCategory = 'Normal';
        _bmiCategoryColor = Colors.green;
      } else if (_bmiResult! >= 25 && _bmiResult! < 29.9) {
        _bmiCategory = 'Overweight';
        _bmiCategoryColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _heightController,
              decoration: InputDecoration(
                labelText: 'Height (cm)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _weightController,
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 20),
            if (_bmiResult != null)
              Column(
                children: [
                  Text(
                    'Your BMI is ${_bmiResult!.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'You are $_bmiCategory',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: _bmiCategoryColor,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
