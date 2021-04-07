import 'package:flutter/material.dart';
import 'Common.dart';

class FittedBoxScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FittedBox'),
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: FittedBox(
                // alignment: Alignment.topCenter,
                child: Image.network('https://picsum.photos/250?image=7'),
                // fit: BoxFit.fill
                fit: BoxFit.contain),
          ),
        ));
  }
}
