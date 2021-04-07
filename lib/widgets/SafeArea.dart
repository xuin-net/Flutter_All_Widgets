import 'package:flutter/material.dart';

import 'Common.dart';

class WidgetDetailScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(
        'this a SafeArea Widget show screen',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
