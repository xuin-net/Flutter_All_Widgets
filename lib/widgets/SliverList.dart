import 'package:flutter/material.dart';
import 'Common.dart';

class SliverListScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('SliverAppBar&SliverA'),
            floating: true,
            flexibleSpace: Placeholder(
              color: Colors.red,
            ),
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text('Item #$index')),
                childCount: 6),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                    tileColor: Colors.amber, title: Text('Item #$index')),
                childCount: 6),
          ),
        ],
      ),
    );
  }
}
