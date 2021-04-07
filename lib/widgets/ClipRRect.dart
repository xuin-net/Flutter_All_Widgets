import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'Common.dart';

class ClipRRectScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ClipRRect'),
        ),
        body: Center(
            child: ClipRRect(
                // clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(32.0),
                child: Stack(
                  children: [
                    Center(child: CircularProgressIndicator()),
                    Center(
                      child: FadeInImage.memoryNetwork(
                          imageSemanticLabel: 'hello',
                          placeholder: kTransparentImage,
                          image: 'https://picsum.photos/250?image=12'),
                    )
                  ],
                ))));
  }
}
