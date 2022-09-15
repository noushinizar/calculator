import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(calc());

}
class calc extends StatelessWidget {
  const calc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CALCULATOR',
      theme: ThemeData(
        primaryColor: Colors.amber),
      home: calculator(),
      );

  }
}

