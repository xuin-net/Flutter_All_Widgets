import 'package:flutter/material.dart';
import 'Common.dart';

class SpacerScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacer'),
      ),
      body: Column(
        children: [
          Spacer(flex: 1),
          Container(height: 80, color: Colors.blueAccent),
          Spacer(flex: 2),
          Container(height: 80, color: Colors.limeAccent),
          Spacer(flex: 3),
          Container(height: 80, color: Colors.cyanAccent),
          Spacer(flex: 4),
        ],
      ),
    );
  }
}
