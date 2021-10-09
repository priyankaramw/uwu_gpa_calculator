import 'package:flutter/material.dart';

class BottomMenuBarItem extends StatefulWidget {
  String cText;
  BottomMenuBarItem({Key? key, required this.cText}) : super(key: key);

  @override
  _BottomMenuBarItemState createState() => _BottomMenuBarItemState();
}

class _BottomMenuBarItemState extends State<BottomMenuBarItem> {
  IconData? cIcon;

  @override
  Widget build(BuildContext context) {
    /// Setting the icon according to the button.
    switch (widget.cText) {
      case 'Settings':
        cIcon = Icons.settings;
        break;
      case 'Home':
        cIcon = Icons.home;
        break;
      case 'Semester':
        cIcon = Icons.list;
        break;
      case 'Info':
        cIcon = Icons.info;
        break;
    }

    /// Button on the bottom menu.
    return InkWell(
      splashColor: Colors.white,
      highlightColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Icon(
            cIcon,
            size: 35,
            color: Colors.white,
          ),
          Text(
            widget.cText,
            style: const TextStyle(color: Colors.white),
          ),
        ]),
      ),
      onTap: () {
        setState(() {});
      },
    );
  }
}
