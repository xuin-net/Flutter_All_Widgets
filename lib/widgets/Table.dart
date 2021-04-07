import 'package:flutter/material.dart';
import 'Common.dart';

class TableScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TableScreen'),
        ),
        body: Table(
          // border: TableBorder.all(),
          border: TableBorder(
            horizontalInside: BorderSide(width: 2.0, color: Colors.black26),
            verticalInside: BorderSide(width: 2.0, color: Colors.black26),
            left: BorderSide(width: 2.0, color: Colors.black26),
            top: BorderSide(width: 2.0, color: Colors.black26),
            right: BorderSide(width: 2.0, color: Colors.black26),
            bottom: BorderSide(width: 2.0, color: Colors.black26),
          ),
          columnWidths: {
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(128),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                Container(
                  height: 32,
                  color: Colors.green,
                ),
                TableCell(
                  // verticalAlignment: TableCellVerticalAlignment.bottom,
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Container(
                    height: 32,
                    width: 32,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 128,
                  color: Colors.blue,
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              children: [
                Container(
                  height: 128,
                  width: 128,
                  color: Colors.purple,
                ),
                Container(
                  height: 32,
                  color: Colors.yellow,
                ),
                Center(
                  child: Container(
                    height: 32,
                    width: 32,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
