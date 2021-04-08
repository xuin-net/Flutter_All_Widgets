import 'package:flutter/material.dart';
import 'Common.dart';

class ClipOvalScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval'),
      ),
      body: ClipOval(
          child: Container(
        color: Colors.tealAccent,
        width: 1600,
        height: 900,
        child: Image.network('https://picsum.photos/250?image=1024'),
      )),
    );
  }
}
