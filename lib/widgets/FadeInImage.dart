import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'Common.dart';

class FadeInImageScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fade In Image'),
        ),
        body: Stack(
          children: [
            Center(child: CircularProgressIndicator()),
            Center(
              child: FadeInImage.memoryNetwork(
                  imageSemanticLabel: 'hello',
                  placeholder: kTransparentImage,
                  image: 'https://picsum.photos/250?image=7'),
            )
          ],
        ));
  }
}
