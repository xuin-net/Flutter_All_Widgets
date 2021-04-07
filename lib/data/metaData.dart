import '../widgets/Common.dart';

import '../widgets/SafeArea.dart';
import '../widgets/Layout.dart';
import '../widgets/Wrap.dart';
import '../widgets/Opacity.dart';
import '../widgets/PageView.dart';
import '../widgets/Table.dart';
import '../widgets/SliverList.dart';
import '../widgets/FadeInImage.dart';
import '../widgets/ClipRRect.dart';

List<LearnWidget> widgets = [
  LearnWidget('SafeArea', SafeAreaScreen()),
  LearnWidget('Layout', LayoutScreen()),
  LearnWidget('Wrap', WrapScreen()),
  LearnWidget('Opacity', OpacityScreen()),
  LearnWidget('PageView', PageViewScreen()),
  LearnWidget('Table', TableScreen()),
  LearnWidget('SliverList', SliverListScreen()),
  LearnWidget('FadeInImage', FadeInImageScreen()),
  LearnWidget('ClipRRect', ClipRRectScreen()),
];
