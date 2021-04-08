import 'package:flutter/material.dart';
import 'Common.dart';

class ShaderMaskScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShaderMask'),
      ),
      body: ShaderMask(
        shaderCallback: (Rect bounds) {
          return RadialGradient(
            center: Alignment.topLeft,
            radius: 1.0,
            colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: const Text(
          'I’m burning the memories',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
