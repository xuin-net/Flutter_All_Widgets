import 'package:flutter/material.dart';
import 'Common.dart';

class AbsorbPointerScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AbsorbPointer'),
        ),
        body: Center(
            child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: ElevatedButton(
                onPressed: () {
                  print('click ElevatedButton sizeBox');
                },
                child: null,
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 200.0,
              child: AbsorbPointer(
                absorbing: true,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue.shade200,
                  ),
                  onPressed: () {
                    print('click AbsorbPointer sizeBox');
                  },
                  child: null,
                ),
              ),
            ),
          ],
        )));
  }
}
