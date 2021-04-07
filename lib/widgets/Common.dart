import 'package:flutter/material.dart';

abstract class CommonWidget extends StatelessWidget {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Material();
  }
}

class LearnWidget {
  final String name;
  final CommonWidget pageObj;

  LearnWidget(this.name, this.pageObj);
}
