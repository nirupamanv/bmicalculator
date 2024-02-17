import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({super.key});

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
    double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
   h_value=double.parse(height.text)/100;
   w_value=double.parse(weight.text);
   result=w_value/(h_value*h_value);
   print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white, fontSize: 30),
          )),
      backgroundColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller:height,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your height',
              filled: true,
              fillColor: Colors.white,
            ),
            style: TextStyle(fontSize: 25),
          ),
          Padding(padding: EdgeInsets.all(16.0)),
          TextField(
            controller: weight,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your weight',
              filled: true,
              fillColor: Colors.white,
            ),
            style: TextStyle(fontSize: 25),
          ),
          TextButton(onPressed: () {
              calculate();
              setState(() {
              });
            },
              child: Text('Calculate')),
          Text(result.toString()),
        ],
      ),
    );
  }
}
