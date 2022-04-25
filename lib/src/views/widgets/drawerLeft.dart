import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
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
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: BugButtomDraw(
              description: "New email",
            ),
          ),
          const SmallButtomDrawer(
            icon: FeatherIcons.inbox,
            description: "Inbox",
            subDescription: "22",
          ),
          const SmallButtomDrawer(
            icon: FeatherIcons.star,
            description: "Starred",
            subDescription: "0",
          ),
          const SmallButtomDrawer(
            icon: FeatherIcons.clock,
            description: "Snoozed",
            subDescription: "0",
          ),
          const SmallButtomDrawer(
            icon: FeatherIcons.send,
            description: "Sent",
            subDescription: "0",
          ),
          const SmallButtomDrawer(
            icon: FeatherIcons.file,
            description: "Drafts",
            subDescription: "0",
          ),
          const SmallButtomDrawer(
            icon: FeatherIcons.alertTriangle,
            description: "Spam",
            subDescription: "0",
          ),
          const SmallButtomDrawer(
            icon: FeatherIcons.trash,
            description: "Bin",
            subDescription: "1000",
          ),
          const Divider(),
          const SmallButtomDrawer(
            icon: FeatherIcons.tag,
            description: "Label",
            subDescription: "4",
          ),
          const Spacer(),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: kOrangerColor,
                          radius: 60.0,
                          child: CircleAvatar(
                            radius: 50.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Card(
                    elevation: 2.0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "👏156",
                        style: TextStyle(
                          color: kGreyColor,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const SmallButtomDrawer(
            icon: FeatherIcons.menu,
            description: "Label",
            subDescription: "0",
          ),
        ],
      ),
    );
  }
}
