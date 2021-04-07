import 'package:flutter/material.dart';
import 'Common.dart';

class OpacityScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('tmp'),
        ),
        body: Opacity(
          opacity: 0.5,
          child: const Text(
            "Now you see me, now you don't!",
            style: TextStyle(color: Colors.red),
          ),
        ));
  }
}
