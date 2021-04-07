import 'package:flutter/material.dart';
import 'Common.dart';

class TmpScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('tmp'),
        ),
        body: Text('tmpPage'));
  }
}
