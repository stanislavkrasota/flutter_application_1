import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final String staticText;

  TextBlock(this.staticText);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      staticText,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ));
  }
}
