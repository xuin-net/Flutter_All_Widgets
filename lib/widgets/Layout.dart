import 'package:flutter/material.dart';
import 'Common.dart';

class LayoutScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('布局'),
        ),
        body: Column(
          children: [
            Row(
              // textDirection: TextDirection.rtl,
              // crossAxisAlignment: CrossAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Text('Deliver features faster',
                      textAlign: TextAlign.center),
                ),
                Expanded(
                  child:
                      Text('Craft beautiful UIS', textAlign: TextAlign.center),
                ),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: const FlutterLogo(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              textDirection: TextDirection.rtl,
              // crossAxisAlignment: CrossAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Text('Deliver features faster',
                      textAlign: TextAlign.center),
                ),
                Expanded(
                  child:
                      Text('Craft beautiful UIS', textAlign: TextAlign.center),
                ),
              ],
            )
          ],
        ));
  }
}
