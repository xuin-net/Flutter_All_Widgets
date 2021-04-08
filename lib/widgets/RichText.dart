import 'package:flutter/material.dart';
import 'Common.dart';

class RichTextScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: 'bold', style: TextStyle(fontWeight: FontWeight.w100)),
              TextSpan(text: ' world!'),
            ],
          ),
        ),
      ),
    );
  }
}
