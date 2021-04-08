import 'package:flutter/material.dart';
import 'Common.dart';

class ValueListenableBuilderScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ValueListenableBuilder'),
        ),
        body: MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyStatefulWidget> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final Widget goodJob = const Text('Good job!');
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times:'),
          ValueListenableBuilder(
            builder: (BuildContext context, int value, Widget child) {
              // This builder will only get called when the _counter
              // is updated.
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('$value'),
                  child,
                ],
              );
            },
            valueListenable: _counter,
            // The child parameter is most helpful if the child is
            // expensive to build and does not depend on the value from
            // the notifier.
            child: goodJob,
          ),
          SizedBox(
            height: 100,
          ),
          FloatingActionButton(
            child: Icon(Icons.plus_one),
            onPressed: () => _counter.value += 1,
          ),
        ],
      ),
    );
  }
}
