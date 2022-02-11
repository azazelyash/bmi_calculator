import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

Color color = const Color(0xFF0A0E21);

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            color: Color(0xFF0A0E21),
          ),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.red,
          )),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
