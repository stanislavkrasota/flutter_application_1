// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import 'text_block.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var showOtherText = false;
  var staticText = 'Body text';

  void changeText() {
    setState(() {
      showOtherText = !showOtherText;
      if (showOtherText) {
        staticText = 'Body text 2.0';
      } else {
        staticText = 'Body text';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Title app'),
            ),
            body: Column(
              children: [
                TextBlock(
                  staticText,
                ),
                ElevatedButton(
                  onPressed: changeText,
                  child: Text('Text Change'),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            )));
  }
}
