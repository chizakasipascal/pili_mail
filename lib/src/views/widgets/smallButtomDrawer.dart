import 'package:flutter/material.dart';
import 'package:pili_mail/src/utils/colors.dart';

class SmallButtomDrawer extends StatefulWidget {
  final dynamic icon;
  final String description;
  final String subDescription;
  const SmallButtomDrawer({
    Key? key,
    required this.icon,
    required this.description,
    required this.subDescription,
  }) : super(key: key);

  @override
  State<SmallButtomDrawer> createState() => _SmallButtomDrawerState();
}

class _SmallButtomDrawerState extends State<SmallButtomDrawer> {
  Color textColor = kGreyColor;
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      textColor = kGreyColor;
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      textColor = kOrangerColor;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
      child: MouseRegion(
        onEnter: _incrementEnter,
        onHover: _updateLocation,
        onExit: _incrementExit,
        child: ListTile(
          leading: Icon(
            widget.icon,
            color: textColor,
          ),
          trailing: widget.subDescription != "0"
              ? Container(
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                    color: kOrangerColor.withOpacity(.2),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      widget.subDescription.length != 3
                          ? widget.subDescription
                          : "${widget.subDescription.substring(0, 1)}k",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 8.0,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          title: Text(
            widget.description,
            style: TextStyle(
              color: textColor,
              fontSize: 12.0,
            ),
          ),
        ),
      ),
    );
  }
}
