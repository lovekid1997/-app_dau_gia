
import 'package:flutter/material.dart';
class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: new Scaffold(
        body: new Text('test'),
      ),
    );
  }
}
