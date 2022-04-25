import 'package:flutter/material.dart';
import 'package:pili_mail/src/utils/utils.dart';

import '../../const/font_family.dart';

class BugButtomDraw extends StatelessWidget {
  final String description;
  const BugButtomDraw({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 100,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(5),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.add,
            color: kWhiteColor,
            size: 14,
          ),
          Text(
            "${description}",
            style: TextStyle(
              fontFamily: FontFamily.roboto,
              fontWeight: FontWeight.normal,
              color: kWhiteColor,
            ),
          ),
        ],
      ),
      color: kOrangerColor,
    );
  }
}
