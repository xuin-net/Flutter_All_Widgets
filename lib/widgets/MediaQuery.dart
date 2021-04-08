import 'package:flutter/material.dart';
import 'Common.dart';

class MediaQueryScreen extends CommonWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
      ),
      body: Builder(builder: (BuildContext context) {
        var accessibleNavigation = MediaQuery.of(context).accessibleNavigation;
        var alwaysUse24HourFormat =
            MediaQuery.of(context).alwaysUse24HourFormat;
        var boldText = MediaQuery.of(context).boldText;
        var devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
        var disableAnimations = MediaQuery.of(context).disableAnimations;
        var highContrast = MediaQuery.of(context).highContrast;
        var invertColors = MediaQuery.of(context).invertColors;
        var orientation = MediaQuery.of(context).orientation;
        var platformBrightness = MediaQuery.of(context).platformBrightness;
        var size = MediaQuery.of(context).size;
        var textScaleFactor = MediaQuery.of(context).textScaleFactor;
        return Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('无障碍模式：$accessibleNavigation'),
              Text('时钟格式为24小时：$alwaysUse24HourFormat'),
              Text('平台字体为粗体：$boldText'),
              Text('设备缩放比例：$devicePixelRatio'),
              Text('是否减少动画：$disableAnimations'),
              Text('是否为高对比度：$highContrast'),
              Text('设备是否反转颜色：$invertColors'),
              Text('设备屏幕方向：$orientation'),
              Text('设备亮度模式[light/dark]：$platformBrightness'),
              Text('设备逻辑尺寸：$size'),
              Text('设备字体像素比例：$textScaleFactor'),
            ],
          ),
        );
      }),
    );
  }
}
