import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:pili_mail/src/utils/colors.dart';

import '../widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 1.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            children: const [
              SizedBox(
                height: 40,
                width: 40,
                child: Icon(
                  FeatherIcons.bell,
                  color: kGreyColor,
                ),
              ),
              SizedBox(width: 20),
              Headernavigator(
                description: "Inbox",
              ),
              Headernavigator(
                description: "Calendar",
              ),
              Headernavigator(
                description: "Concierge",
              ),
              Headernavigator(
                description: "Events",
              ),
              Headernavigator(
                description: "Repports",
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: const [
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
      ),
    );
  }
}
