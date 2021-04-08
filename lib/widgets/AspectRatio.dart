import 'package:flutter/material.dart';
import 'Common.dart';

class AspectRatioScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio'),
      ),
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        width: double.infinity,
        height: 100.0,
        child: AspectRatio(
          aspectRatio: 21 / 9,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
