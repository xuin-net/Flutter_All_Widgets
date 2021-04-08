import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'Common.dart';

class TransformScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transform'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            child: Transform(
              alignment: Alignment.bottomLeft,
              transform: Matrix4.skewY(0.5)..rotateZ(math.pi / 45.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: const Color(0xFFE8581C),
                child: const Text('Apartment for rent!'),
              ),
            ),
          ),
        ));
  }
}
