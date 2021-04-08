import 'package:flutter/material.dart';
import 'Common.dart';

class FlexibleScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flexible'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(color: Colors.lightBlue),
            ),
            Flexible(
              flex: 2,
              child: Container(color: Colors.lightGreen),
            ),
            Flexible(
              flex: 3,
              child: Container(color: Colors.redAccent),
            )
          ],
        ));
  }
}
