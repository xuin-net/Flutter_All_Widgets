import 'package:flutter/material.dart';

import 'Common.dart';

class WidgetDetailScreen extends CommonWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'the text in safeArea',
            style: TextStyle(fontSize: 18),
          ),
          TextButton(
            child: Text('pop widget'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
