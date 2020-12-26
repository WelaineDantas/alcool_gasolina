import 'package:alcool_gasolina/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Álcool ou Gasolina",
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo[800]),
    );
  }
}
