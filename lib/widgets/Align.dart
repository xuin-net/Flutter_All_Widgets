import 'package:flutter/material.dart';
import 'Common.dart';

class AlignScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Column(
            children: [
              Text('Alignment topRight'),
              Container(
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
                child: Align(
                  alignment: Alignment.topRight,
                  child: FlutterLogo(size: 60),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text('Alignment Origin'),
              Container(
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
                child: Align(
                  alignment: Alignment(0.3, -0.4),
                  child: FlutterLogo(size: 60),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text('Alignment Offset Origin'),
              Container(
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
                child: Align(
                  alignment: FractionalOffset(-0.3, 0.2),
                  child: FlutterLogo(size: 60),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
