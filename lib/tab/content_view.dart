import 'package:flutter/cupertino.dart';

import 'custom_tab.dart';
import 'layout.dart';

class ContentView {
  ContentView({required this.tab, required this.content});

  final CustomTab tab;
  final TabLayout content;
}
