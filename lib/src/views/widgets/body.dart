import 'package:flutter/material.dart';
import 'package:pili_mail/src/utils/colors.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      elevation: 2.0,
      child: Container(
        height: size.height,
        width: size.width,
        color: kWhiteColor.withOpacity(0.4),
        child: const Text("Desktop Tst"),
      ),
    );
  }
}
