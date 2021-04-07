import 'package:flutter/material.dart';

class CommonWidget extends StatelessWidget {
  final LearnWidget widget;

  CommonWidget({
    @required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Material();
  }
}

class LearnWidget {
  final String name;
  final Widget pageObj;

  LearnWidget(this.name, this.pageObj);
}
