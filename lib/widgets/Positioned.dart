import 'package:flutter/material.dart';
import 'Common.dart';

class PositionedScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            top: 80,
            right: 50,
            child: Container(
              width: 40,
              height: 40,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
