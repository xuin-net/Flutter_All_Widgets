import 'package:flutter/material.dart';
import 'Common.dart';

class WrapScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap 内容自动换行'),
      ),
      body: Wrap(
        // alignment: WrapAlignment.center,
        // crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8.0, // 列距
        runSpacing: 4.0, // 行距
        children: <Widget>[
          Container(
            color: Colors.blue.shade300,
            height: 30,
            width: 20,
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('AH')),
            label: Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('ML')),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('HM')),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('ZV')),
            label: Text('Zavine'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('XI')),
            label: Text('xuin'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('MZ')),
            label: Text('meizu'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('HW')),
            label: Text('huawei'),
          ),
        ],
      ),
    );
  }
}
