import 'package:flutter/material.dart';
import 'Common.dart';

class DismissibleScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: Key('Item ${items[index]}'),
          child: ListTile(
            title: Text(
              'Item ${items[index]}',
            ),
          ),
          background: Container(
            color: Colors.green,
          ),
          onDismissed: (DismissDirection direction) {
            setState(() {
              items.removeAt(index);
            });
          },
        );
      },
    );
  }
}
