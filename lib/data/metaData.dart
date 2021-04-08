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
import '../widgets/FittedBox.dart';
import '../widgets/LayoutBuilder.dart';
import '../widgets/AbsorbPointer.dart';
import '../widgets/Transform.dart';
import '../widgets/BackdropFilter.dart';
import '../widgets/Align.dart';
import '../widgets/Positioned.dart';
import '../widgets/Dismissible.dart';

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
  LearnWidget('FittedBox', FittedBoxScreen()),
  LearnWidget('LayoutBuilder', LayoutBuilderScreen()),
  LearnWidget('AbsorbPointer', AbsorbPointerScreen()),
  LearnWidget('Transform', TransformScreen()),
  LearnWidget('BackdropFilter', BackdropFilterScreen()),
  LearnWidget('Align', AlignScreen()),
  LearnWidget('Positioned', PositionedScreen()),
  LearnWidget('Dismissible', DismissibleScreen()),
];
