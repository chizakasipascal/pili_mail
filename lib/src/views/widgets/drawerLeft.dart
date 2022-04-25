import 'package:flutter/material.dart';
import 'package:pili_mail/src/utils/utils.dart';

class DrawerLeft extends StatelessWidget {
  const DrawerLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: 100,
      color: kWhiteColor,
      child: Column(
        children: [
          const Text("Drawer"),
        ],
      ),
    );
  }
}
