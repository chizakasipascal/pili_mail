import 'package:pili_mail/src/views/screens/screens.dart';

import 'const/routes.dart';
import 'const/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'const/app_theme.dart';

class Pili extends StatelessWidget {
  const Pili({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.deepOrange, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      theme: themeData,
      title: Strings.appName,
      initialRoute: Routes.initial,
      home: const Home(),
      routes: Routes.routes,
    );
  }
}
