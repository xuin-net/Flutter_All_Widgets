import 'package:flutter/material.dart';

import 'Common.dart';

class SafeAreaScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      // top: false,
      top: true,
      right: true,
      bottom: true,
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
