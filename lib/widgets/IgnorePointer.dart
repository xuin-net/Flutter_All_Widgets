import 'package:flutter/material.dart';
import 'Common.dart';

class IgnorePointerScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IgnorePointer'),
        ),
        body: const MyStatefulWidget());
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool ignoring = false;
  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              setIgnoring(!ignoring);
            },
            child: Text(
              ignoring ? 'Set ignoring to false' : 'Set ignoring to true',
            ),
          ),
          IgnorePointer(
            ignoring: ignoring,
            child: Column(
              children: [
                Text('Ignoring: $ignoring'),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Click me!'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
