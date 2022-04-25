import 'package:flutter/material.dart';
import 'package:pili_mail/src/utils/utils.dart';
import 'package:pili_mail/src/views/widgets/widgets.dart';

class DrawerLeft extends StatelessWidget {
  const DrawerLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: kWhiteColor,
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: BugButtomDraw(
              description: "New email",
            ),
          ),
          SizedBox(height: 50.0),
          SmallButtomDrawer(
            icon: Icons.inbox,
            description: "Inbox",
            subDescription: "22",
          ),
          SmallButtomDrawer(
            icon: Icons.star_rate,
            description: "Starred",
            subDescription: "0",
          ),
          SmallButtomDrawer(
            icon: Icons.snooze_outlined,
            description: "Snoozed",
            subDescription: "0",
          ),
          SmallButtomDrawer(
            icon: Icons.send,
            description: "Sent",
            subDescription: "0",
          ),
          SmallButtomDrawer(
            icon: Icons.drafts,
            description: "Drafts",
            subDescription: "0",
          ),
          SmallButtomDrawer(
            icon: Icons.warning_rounded,
            description: "Spam",
            subDescription: "0",
          ),
          SmallButtomDrawer(
            icon: Icons.border_inner,
            description: "Inbox",
            subDescription: "0",
          ),
        ],
      ),
    );
  }
}
