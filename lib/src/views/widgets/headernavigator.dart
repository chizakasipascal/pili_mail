import 'package:flutter/material.dart';
import 'package:pili_mail/src/utils/utils.dart';

class Headernavigator extends StatefulWidget {
  final String description;
  const Headernavigator({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  State<Headernavigator> createState() => _HeadernavigatorState();
}

class _HeadernavigatorState extends State<Headernavigator> {
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
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: SizedBox(
        width: 100,
        child: Text(
          widget.description,
          style: TextStyle(
            color: textColor,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
