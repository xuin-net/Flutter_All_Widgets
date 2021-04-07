import '../widgets/Common.dart';

import '../widgets/SafeArea.dart';
import '../widgets/Layout.dart';
import '../widgets/Wrap.dart';
import '../widgets/Opacity.dart';
import '../widgets/PageView.dart';
import '../widgets/Table.dart';

List<LearnWidget> widgets = [
  LearnWidget('SafeArea', SafeAreaScreen()),
  LearnWidget('Layout', LayoutScreen()),
  LearnWidget('Wrap', WrapScreen()),
  LearnWidget('Opacity', OpacityScreen()),
  LearnWidget('PageView', PageViewScreen()),
  LearnWidget('Table', TableScreen()),
];
