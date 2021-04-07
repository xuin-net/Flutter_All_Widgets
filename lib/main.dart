import 'package:flutter/material.dart';
import './widgets/Common.dart';
import './data/metaData.dart' as metaData;

void main() {
  runApp(LearnWidgetsApp());
}

class LearnWidgetsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LearnWidgetsAppState();
}

class _LearnWidgetsAppState extends State<LearnWidgetsApp> {
  LearnWidget _selectedWidget;

  List<LearnWidget> widgets = metaData.widgets;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Full Widgets App',
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey('WidgetsListPage'),
            child: WidgetListScreen(
              widgets: widgets,
              onTapped: _handleWidgetTapped,
            ),
          ),
          if (_selectedWidget != null)
            WidgetsDetailsPage(widget: _selectedWidget)
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }

          // Update the list of pages by setting _selectedWidget to null
          setState(() {
            _selectedWidget = null;
          });

          return true;
        },
      ),
    );
  }

  void _handleWidgetTapped(LearnWidget widget) {
    setState(() {
      _selectedWidget = widget;
    });
  }
}

class WidgetsDetailsPage extends Page {
  final LearnWidget widget;

  WidgetsDetailsPage({
    this.widget,
  }) : super(key: ValueKey(widget));

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        widget.pageObj.context = context;
        return widget.pageObj;
      },
    );
  }
}

class WidgetListScreen extends StatelessWidget {
  final List<LearnWidget> widgets;
  final ValueChanged<LearnWidget> onTapped;

  WidgetListScreen({
    @required this.widgets,
    @required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Widgets'),
      ),
      body: ListView(
        children: [
          for (var widget in widgets)
            ListTile(
              title: Text(widget.name),
              onTap: () => onTapped(widget),
            )
        ],
      ),
    );
  }
}
