import 'package:flutter/material.dart';
import 'Common.dart';

class SizedBoxScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox'),
      ),
      body: SizedBox(
        width: 200,
        height: 200,
        child: Container(
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
