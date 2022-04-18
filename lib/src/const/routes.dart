import 'package:flutter/material.dart';
import '../views/screens/screens.dart';

class Routes {
  Routes._();
  static const String initial = 'home';

  static final routes = <String, WidgetBuilder>{
    initial: (context) => const Home(),
  };
}
