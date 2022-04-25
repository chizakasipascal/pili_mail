import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: DrawerLeft(),
          ),
          Expanded(
            flex: 8,
            child: Body(),
          ),
        ],
      ),
    );
  }
}


