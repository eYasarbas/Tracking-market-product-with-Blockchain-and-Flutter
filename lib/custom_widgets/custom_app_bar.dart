import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final double height;
  final Widget child;

  CustomAppBar({@required this.height, this.child});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.blueGrey,
        height: preferredSize.height,
        alignment: Alignment.bottomCenter,
        child: child);
  }
}
