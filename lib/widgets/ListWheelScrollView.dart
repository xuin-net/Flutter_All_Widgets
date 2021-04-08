import 'package:flutter/material.dart';
import 'Common.dart';

class ListWheelScrollViewScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheelScrollView'),
      ),
      body: ListWheelScrollView(
        children: [
          Container(color: Colors.blueAccent),
          Container(color: Colors.redAccent),
          Container(color: Colors.orangeAccent),
          Container(color: Colors.greenAccent),
          Container(color: Colors.amberAccent),
          Container(color: Colors.indigoAccent),
          Container(color: Colors.tealAccent),
        ],
        itemExtent: 64,
        useMagnifier: true,
      ),
    );
  }
}
