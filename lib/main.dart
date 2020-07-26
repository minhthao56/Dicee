import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[700],
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Center(child: Text('Dicee')),
        ),
        body: PageDicee(),
      ),
    ),
  );
}

class PageDicee extends StatefulWidget {
  PageDicee({Key key}) : super(key: key);
  @override
  _PageDiceeState createState() => _PageDiceeState();
}

class _PageDiceeState extends State<PageDicee> {
  int numberRadomLeft = 1;
  int numberRadomRight = 1;
  void hanldeChangeNumber() {
    setState(() {
      numberRadomLeft = Random().nextInt(6) + 1;
      numberRadomRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$numberRadomLeft.png'),
              onPressed: hanldeChangeNumber,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$numberRadomRight.png'),
              onPressed: hanldeChangeNumber,
            ),
          ),
        ],
      ),
    );
  }
}
